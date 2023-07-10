import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/fuel_consumption_per_mile/body/fuel_consumption_per_mile_page_loaded_body.dart';
import 'package:viam_marine/presentation/page/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_page_cubit.dart';
import 'package:viam_marine/presentation/page/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_page_state.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/presentation/widgets/loading_indicator/app_loading_indicator.dart';

@RoutePage()
class FuelConsumptionPerMilePage extends StatelessWidget with AutoRouteWrapper, ExtensionMixin {
  const FuelConsumptionPerMilePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<FuelConsumptionPerMilePageCubit>()..init(),
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: ViamAppBar(
          title: Strings.of(context).fuel_consumption_per_mile_chart_tile_title,
          leading: BackButton(
            onPressed: AutoRouter.of(context).pop,
            color: context.getColors().darkBlue1,
          ),
        ),
        body: BlocBuilder<FuelConsumptionPerMilePageCubit, FuelConsumptionPerMilePageState>(
          builder: (context, state) => state.maybeWhen(
            loading: AppLoadingIndicator.new,
            loaded: (fuelConsumptionPerMile, yAxisMaxValue) => FuelConsumptionPerMilePageLoadedBody(
              fuelConsumptionPerMile: fuelConsumptionPerMile,
              yAxisMaxValue: yAxisMaxValue,
            ),
            orElse: SizedBox.shrink,
          ),
        ),
      );
}
