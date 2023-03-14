import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/change_boat_name/body/change_boat_name_body.dart';
import 'package:viam_marine/app/presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart';
import 'package:viam_marine/app/presentation/page/change_boat_name/cubit/change_boat_name_state.dart';
import 'package:viam_marine/app/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/app/presentation/widgets/snack_bar/viam_snack_bar.dart';
import 'package:viam_marine/app/style/app_typography.dart';

class ChangeBoatNamePage extends StatelessWidget with ExtensionMixin, AutoRouteWrapper {
  final List<ViamBoat> boats;
  final String? currentBoatId;

  const ChangeBoatNamePage({
    super.key,
    required this.boats,
    required this.currentBoatId,
  });

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<ChangeBoatNameCubit>()..init(boats, currentBoatId),
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: ViamAppBar(
          title: Strings.of(context).text_field_label_name,
          titleTextStyle: AppTypography.body.copyWith(color: context.getColors().black),
          leading: BackButton(color: context.getColors().blue),
        ),
        body: BlocConsumer<ChangeBoatNameCubit, ChangeBoatNameState>(
          builder: _builder,
          buildWhen: _buildWhen,
          listener: _listener,
          listenWhen: _listenWhen,
        ),
      );

  Widget _builder(BuildContext context, ChangeBoatNameState state) => state.maybeWhen(
        loading: (boatName, isButtonActive) => ChangeBoatNameBody(
          boatName: boatName,
          isButtonActive: isButtonActive,
          isLoading: true,
        ),
        loaded: (boatName, isButtonActive) => ChangeBoatNameBody(
          boatName: boatName,
          isButtonActive: isButtonActive,
          isLoading: false,
        ),
        orElse: SizedBox.shrink,
      );

  bool _buildWhen(ChangeBoatNameState _, ChangeBoatNameState current) =>
      current is ChangeBoatNameStateLoading || current is ChangeBoatNameStateLoaded;

  void _listener(BuildContext context, ChangeBoatNameState state) => state.maybeWhen(
        error: () => _showError(context),
        success: () => _goBackToSettings(context),
        orElse: () => null,
      );

  bool _listenWhen(ChangeBoatNameState _, ChangeBoatNameState current) =>
      current is ChangeBoatNameStateError || current is ChangeBoatNameStateSuccess;

  void _showError(BuildContext context) => ScaffoldMessenger.of(context).showSnackBar(
        ViamSnackBar(
          contentMessage: Strings.of(context).boat_name_taken_error_message,
          snackBarBackgroundColor: context.getColors(listen: false).red,
          textColor: context.getColors(listen: false).mainWhite,
        ),
      );

  void _goBackToSettings(BuildContext context) => AutoRouter.of(context).pop();
}
