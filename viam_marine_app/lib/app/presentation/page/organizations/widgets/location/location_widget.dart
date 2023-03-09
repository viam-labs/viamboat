import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/organizations/widgets/location/cubit/location_cubit.dart';
import 'package:viam_marine/app/presentation/page/organizations/widgets/location/cubit/location_state.dart';
import 'package:viam_marine/app/presentation/page/organizations/widgets/robots/robots_list_widget.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/app/style/app_typography.dart';

class LocationWidget extends StatelessWidget {
  final String? id;

  const LocationWidget({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => getIt<LocationCubit>()..init(id),
        child: BlocBuilder<LocationCubit, LocationState>(
          builder: (context, state) => state.maybeWhen(
            loading: () => const AppLoadingIndicator(isIos: true),
            loaded: (locations) => ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    locations[index].name,
                    style: AppTypography.newBody,
                  ),
                  RobotsListWidget(locationId: locations[index].id)
                ],
              ),
              itemCount: locations.length,
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      );
}
