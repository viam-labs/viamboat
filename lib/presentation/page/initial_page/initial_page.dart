import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/initial_page/cubit/initial_page_cubit.dart';
import 'package:viam_marine/presentation/page/initial_page/widgets/dor_lightning.dart';

class InitialPage extends StatelessWidget implements AutoRouteWrapper {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<InitialPageCubit>(
        create: (BuildContext context) => getIt<InitialPageCubit>(),
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.current.Hello),
      ),
      body: const DorLightning(),
    );
  }
}