import 'package:flutter/material.dart';
import 'package:viam_marine/domain/data_viam/model/water_temperature.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/widgets/maps_common/map_popup_body.dart';
import 'package:viam_marine/presentation/widgets/maps_common/map_popup_text.dart';
import 'package:viam_marine/style/number_formats.dart';
import 'package:viam_marine/utils/date_time_formatter.dart';

class WaterTempPopup extends StatelessWidget {
  final WaterTemperature waterTemperature;

  const WaterTempPopup({
    super.key,
    required this.waterTemperature,
  });

  @override
  Widget build(BuildContext context) => MapPopupBody(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MapPopupText(
              firstText: Strings.of(context).water_temp_popup_temp,
              secondText: ViamNumberFormats.sensor.format(waterTemperature.temperature),
            ),
            MapPopupText(
              firstText: Strings.of(context).popup_date,
              secondText: DateTimeFormatter.dateToYearMonthDayHour(waterTemperature.date),
            ),
            MapPopupText(
              firstText: Strings.of(context).popup_coords,
              secondText: Strings.of(context).map_tile_boat_coordinates(
                waterTemperature.lat,
                waterTemperature.long,
              ),
            ),
          ],
        ),
      );
}
