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
          titleTextStyle: AppTypography.newBody.copyWith(color: context.getColors().black),
          leading: BackButton(color: context.getColors().blue),
        ),
        body: BlocBuilder<ChangeBoatNameCubit, ChangeBoatNameState>(
          builder: (context, state) => state.maybeWhen(
            loaded: (boatName, isButtonActive) => ChangeBoatNameBody(
              boatName: boatName,
              isButtonActive: isButtonActive,
            ),
            orElse: SizedBox.shrink,
          ),
        ),
      );
}
