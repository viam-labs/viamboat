import 'package:flutter/material.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/analytics_tile_common_body/analytcis_tile_common_body.dart';
import 'package:viam_marine/presentation/widgets/loading_indicator/app_loading_indicator.dart';

class WaterTemperatureTileLoadingBody extends StatelessWidget {
  const WaterTemperatureTileLoadingBody({super.key});

  @override
  Widget build(BuildContext context) => AnalyticsTileCommonBody(
    title: Strings.of(context).water_temp_chart_title,
    iconPath: Assets.images.svg.icons.waterTemperature.path,
    child: const SizedBox(
      height: 192,
      child: AppLoadingIndicator(),
    ),
  );
}
