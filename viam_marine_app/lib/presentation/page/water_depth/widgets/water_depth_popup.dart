import 'package:flutter/material.dart';
import 'package:viam_marine/domain/data_viam/model/water_depth.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/presentation/widgets/maps_common/map_popup_text.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/utils/date_time_formatter.dart';

class WaterDepthPopup extends StatelessWidget with ExtensionMixin {
  final WaterDepth waterDepth;

  const WaterDepthPopup({
    super.key,
    required this.waterDepth,
  });

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.only(bottom: Dimens.xs),
        decoration: BoxDecoration(
          color: context.getColors().mainWhite,
          borderRadius: BorderRadius.circular(Dimens.m),
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            Dimens.s,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MapPopupText(
                firstText: 'Water depth: ',
                secondText: '${waterDepth.depth}',
              ),
              MapPopupText(
                firstText: 'Date: ',
                secondText: DateTimeFormatter.dateToYearMonthDayHour(waterDepth.date),
              ),
              MapPopupText(
                firstText: 'Coords: ',
                secondText: '${waterDepth.lat}, ${waterDepth.long}',
              ),
            ],
          ),
        ),
      );
}
