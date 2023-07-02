import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/fuel_consumption_over_time/body/fuel_consumption_over_time_page_loaded_body.dart';
import 'package:viam_marine/presentation/page/fuel_consumption_over_time/cubit/fuel_consumption_over_time_page_cubit.dart';
import 'package:viam_marine/presentation/page/fuel_consumption_over_time/cubit/fuel_consumption_over_time_page_state.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/utils/viam_constants.dart';

class FuelConsumptionOverTimePage extends StatelessWidget with AutoRouteWrapper, ExtensionMixin {
  final String locationId;
  final String robotName;
  final String? fuelSensorName;
  final String? movementSensorName;

  const FuelConsumptionOverTimePage({
    super.key,
    this.fuelSensorName,
    this.movementSensorName,
    required this.locationId,
    required this.robotName,
  });

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<FuelConsumptionOverTimePageCubit>()
          ..init(
            locationId,
            robotName,
            fuelSensorName,
            movementSensorName,
          ),
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: ViamAppBar(
          title: Strings.of(context)
              .fuel_consumption_over_time_chart_tile_title(_formattedFuelSensorName(fuelSensorName) ?? ''),
          leading: BackButton(
            onPressed: AutoRouter.of(context).pop,
            color: context.getColors().darkBlue1,
          ),
        ),
        body: BlocBuilder<FuelConsumptionOverTimePageCubit, FuelConsumptionOverTimePageState>(
          builder: (context, state) => state.maybeWhen(
            loading: AppLoadingIndicator.new,
            loaded: (
              fuelConsumptionOverTime,
              yAxisMaxValue,
              isBackButtonActive,
              isForwardButtonActive,
            ) =>
                FuelConsumptionOverTimePageLoadedBody(
              fuelConsumptionOverTime: fuelConsumptionOverTime,
              yAxisMaxValue: yAxisMaxValue,
              isBackButtonActive: isBackButtonActive,
              isForwardButtonActive: isForwardButtonActive,
            ),
            orElse: SizedBox.shrink,
          ),
        ),
      );

  String? _formattedFuelSensorName(String? fuelName) {
    if (fuelName == null) {
      return null;
    }

    final int lastColonPosition = fuelName.lastIndexOf(':');

    if (lastColonPosition != -1) {
      return fuelName.substring(lastColonPosition + 1).replaceAll(ViamConstants.fluidPrefix, '');
    } else {
      return fuelName.replaceAll(ViamConstants.fluidPrefix, '');
    }
  }
}
