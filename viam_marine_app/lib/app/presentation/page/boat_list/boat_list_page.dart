import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/boat_list/body/boat_list_body.dart';
import 'package:viam_marine/app/presentation/page/boat_list/cubit/boat_list_cubit.dart';
import 'package:viam_marine/app/presentation/page/boat_list/cubit/boat_list_state.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';

class BoatListPage extends StatelessWidget with ExtensionMixin {
  const BoatListPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<BoatListCubit>(
        create: (context) => getIt<BoatListCubit>()..init(),
        child: Scaffold(
          body: BlocConsumer<BoatListCubit, BoatListState>(
            listener: _listener,
            builder: _builder,
          ),
        ),
      );

  void _listener(
    BuildContext context,
    BoatListState state,
  ) =>
      state.maybeWhen(
        reloadApp: () => _reloadApp(context),
        orElse: () => null,
      );

  Widget _builder(
    BuildContext context,
    BoatListState state,
  ) =>
      state.maybeWhen(
        loading: (boats) => BoatListBody(
          boats: boats,
          isLoading: true,
        ),
        loaded: (boats, currentBoatId) => BoatListBody(
          boats: boats,
          currentBoatId: currentBoatId,
          isLoading: false,
        ),
        reloadApp: () => const Center(
          child: AppLoadingIndicator(),
        ),
        orElse: () => const SizedBox.shrink(),
      );

  Future<void> _reloadApp(BuildContext context) async {
    final router = AutoRouter.of(context);
    await pushNewSessionScope();

    await router.replaceAll([const SplashRoute()]);
  }
}
