import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/organizations/cubit/organizations_cubit.dart';
import 'package:viam_marine/app/presentation/page/organizations/cubit/organizations_state.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';

class OrganizationsPage extends StatelessWidget with AutoRouteWrapper {
  const OrganizationsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocBuilder<OrganizationsCubit, OrganizationsState>(
          builder: (context, state) => state.maybeWhen(
            loading: () => AppLoadingIndicator(),
            loaded: (orgs) => Center(
              child: ListView.builder(
                itemBuilder: (context, index) => Text(orgs[index].name),
                itemCount: orgs.length,
              ),
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      );

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<OrganizationsCubit>()..init(),
        child: this,
      );
}
