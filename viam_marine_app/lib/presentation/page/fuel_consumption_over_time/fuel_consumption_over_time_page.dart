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

class FuelConsumptionOverTimePage extends StatelessWidget with AutoRouteWrapper, ExtensionMixin {
  final String locationId;
  final String robotName;

  const FuelConsumptionOverTimePage({
    super.key,
    required this.locationId,
    required this.robotName,
  });

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<FuelConsumptionOverTimePageCubit>()
          ..init(
            locationId,
            robotName,
          ),
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: ViamAppBar(
          title: Strings.of(context).fuel_consumption_over_time_chart_tile_title,
          leading: BackButton(
            onPressed: AutoRouter.of(context).pop,
            color: context.getColors().darkBlue1,
          ),
        ),
        body: BlocBuilder<FuelConsumptionOverTimePageCubit, FuelConsumptionOverTimePageState>(
          builder: (context, state) => state.maybeWhen(
            loading: AppLoadingIndicator.new,
            loaded: (fuelConsumptionOverTime, yAxisMaxValue) => FuelConsumptionOverTimePageLoadedBody(
              fuelConsumptionOverTime: fuelConsumptionOverTime,
              yAxisMaxValue: yAxisMaxValue,
            ),
            orElse: SizedBox.shrink,
          ),
        ),
      );
}
