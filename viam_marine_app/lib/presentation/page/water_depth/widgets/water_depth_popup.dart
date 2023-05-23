import 'package:flutter/material.dart';
import 'package:viam_marine/domain/data_viam/model/water_depth.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/widgets/maps_common/map_popup_body.dart';
import 'package:viam_marine/presentation/widgets/maps_common/map_popup_text.dart';
import 'package:viam_marine/style/number_formats.dart';
import 'package:viam_marine/utils/date_time_formatter.dart';

class WaterDepthPopup extends StatelessWidget {
  final WaterDepth waterDepth;

  const WaterDepthPopup({
    super.key,
    required this.waterDepth,
  });

  @override
  Widget build(BuildContext context) => MapPopupBody(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MapPopupText(
              firstText: Strings.of(context).water_depth_popup_depth,
              secondText: ViamNumberFormats.sensor.format(waterDepth.depth),
            ),
            MapPopupText(
              firstText: Strings.of(context).popup_date,
              secondText: DateTimeFormatter.dateToYearMonthDayHour(waterDepth.date),
            ),
            MapPopupText(
              firstText: Strings.of(context).popup_coords,
              secondText: Strings.of(context).map_tile_boat_coordinates(
                waterDepth.lat,
                waterDepth.long,
              ),
            ),
          ],
        ),
      );
}
