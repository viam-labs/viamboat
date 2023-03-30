import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/connection_error/cubit/connection_error_cubit.dart';
import 'package:viam_marine/presentation/page/connection_error/cubit/connection_error_state.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/presentation/widgets/error_widget/error_state_widget.dart';
import 'package:viam_marine/utils/ignore_else_state.dart';

class ConnectionErrorPage extends StatelessWidget with AutoRouteWrapper, ExtensionMixin {
  final ViamAppRobot robot;
  final String? secret;

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<ConnectionErrorCubit>()..init(robot, secret),
        child: this,
      );

  const ConnectionErrorPage({
    super.key,
    this.secret,
    required this.robot,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: ViamAppBar(
          leading: BackButton(color: context.getColors().darkBlue1),
        ),
        body: SafeArea(
          child: BlocConsumer<ConnectionErrorCubit, ConnectionErrorState>(
            builder: _builder,
            listener: _listener,
            listenWhen: _listenWhen,
            buildWhen: _buildWhen,
          ),
        ),
      );

  bool _listenWhen(_, ConnectionErrorState current) => current is ConnectionErrorStateGoToMainPage;

  bool _buildWhen(_, ConnectionErrorState current) => current is! ConnectionErrorStateGoToMainPage;

  Widget _builder(BuildContext context, ConnectionErrorState state) => state.maybeWhen(
        loaded: () => _buildErrorWdiget(context, false),
        loading: () => _buildErrorWdiget(context, true),
        orElse: SizedBox.shrink,
      );

  Widget _buildErrorWdiget(
    BuildContext context,
    bool isLoading,
  ) =>
      ErrorStateWidget(
        iconPath: Assets.images.svg.icons.connectionError.path,
        title: Strings.of(context).error_can_not_connect_to_the_boat,
        subtitle: Strings.of(context).error_while_connecting_msg,
        buttonText: Strings.of(context).retry,
        onTap: context.read<ConnectionErrorCubit>().onRetryButtonTap,
        isLoading: isLoading,
      );

  void _listener(BuildContext context, ConnectionErrorState state) => state.maybeWhen(
        goToMainPage: () => _goToMainPage(context),
        orElse: doNothing,
      );

  void _goToMainPage(BuildContext context) => AutoRouter.of(context).replaceAll([MainRoute(robot: robot)]);
}
