import 'package:flutter/material.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/analytics_tile_common_body/analytcis_tile_common_body.dart';

class DepthOverTimeLoadedBody extends StatelessWidget {
  const DepthOverTimeLoadedBody({super.key});

  @override
  Widget build(BuildContext context) => AnalyticsTileCommonBody(
        //TODO: Implement this
        title: 'Depth over time',
        iconPath: Assets.images.svg.icons.pin.path,
        child: Container(color: Colors.red),
      );
}
