import 'package:flutter/material.dart';
import 'package:viam_marine/presentation/page/analytics/cubit/analytics_cubit.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/tile_wrapper/analytics_tile_body_wrapper.dart';
import 'package:viam_marine/style/dimens.dart';

class AnalyticsLoadedBody extends StatelessWidget {
  final List<AnalyticsType> analyticsTypes;

  const AnalyticsLoadedBody({
    super.key,
    required this.analyticsTypes,
  });

  @override
  Widget build(BuildContext context) => ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.s),
        itemBuilder: (_, index) => AnalyticsTileBodyWrapper(type: analyticsTypes[index]),
        separatorBuilder: (_, __) => const SizedBox(height: Dimens.m),
        itemCount: analyticsTypes.length,
      );
}
