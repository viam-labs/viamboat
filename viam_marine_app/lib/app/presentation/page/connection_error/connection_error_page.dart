import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/connection_error/body/connection_error_body.dart';
import 'package:viam_marine/app/presentation/page/connection_error/cubit/connection_error_cubit.dart';
import 'package:viam_marine/app/presentation/page/connection_error/cubit/connection_error_state.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';
import 'package:viam_marine/app/presentation/widgets/app_bar/viam_app_bar.dart';

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
        loaded: () => const ConnectionErrorBody(isLoading: false),
        loading: () => const ConnectionErrorBody(isLoading: true),
        orElse: SizedBox.shrink,
      );

  void _listener(BuildContext context, ConnectionErrorState state) => state.maybeWhen(
        goToMainPage: () => _goToMainPage(context),
        orElse: () => null,
      );

  void _goToMainPage(BuildContext context) => AutoRouter.of(context).replaceAll([MainRoute(robot: robot)]);
}
