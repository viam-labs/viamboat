import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/login/body/login_page_body.dart';
import 'package:viam_marine/presentation/page/login/cubit/login_page_cubit.dart';
import 'package:viam_marine/presentation/page/login/cubit/login_page_state.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/presentation/widgets/snack_bar/viam_snack_bar.dart';

class LoginPage extends StatelessWidget with AutoRouteWrapper, ExtensionMixin {
  const LoginPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<LoginPageCubit>(),
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocConsumer<LoginPageCubit, LoginPageState>(
          listener: _listener,
          builder: _builder,
          buildWhen: _buildWhen,
          listenWhen: _listenWhen,
        ),
      );

  void _listener(
    BuildContext context,
    LoginPageState state,
  ) =>
      state.maybeWhen(
        loginSuccessful: () => _navigateToSelectRobotPage(context),
        error: () => _showError(context),
        orElse: () => null,
      );

  Widget _builder(
    BuildContext context,
    LoginPageState state,
  ) =>
      state.maybeWhen(
        loaded: () => const LoginPageBody(),
        loading: () => const LoginPageBody(isLoading: true),
        orElse: SizedBox.shrink,
      );

  bool _listenWhen(
    LoginPageState _,
    LoginPageState current,
  ) =>
      current is! LoginPageStateLoaded && current is! LoginPageStateLoading;

  bool _buildWhen(
    LoginPageState _,
    LoginPageState current,
  ) =>
      current is LoginPageStateLoaded || current is LoginPageStateLoading;

  void _navigateToSelectRobotPage(BuildContext context) =>
      AutoRouter.of(context).replaceAll([const SelectRobotRoute()]);

  void _showError(BuildContext context) => ScaffoldMessenger.of(context).showSnackBar(
        ViamSnackBar(
          contentMessage: Strings.of(context).error_something_went_wrong,
          snackBarBackgroundColor: context.getColors(listen: false).red,
          textColor: context.getColors(listen: false).mainWhite,
        ),
      );
}
