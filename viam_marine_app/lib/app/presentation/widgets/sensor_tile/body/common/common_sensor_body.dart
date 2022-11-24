import 'package:flutter/widgets.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class CommonSensorBody extends StatelessWidget with ExtensionMixin {
  final String sensorName;
  final Widget sensorBodyType;

  const CommonSensorBody({
    required this.sensorName,
    required this.sensorBodyType,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(Dimens.s),
        decoration: BoxDecoration(
          color: context.getColors().mainWhite,
          border: Border.all(color: context.getColors().mainGrey),
          borderRadius: BorderRadius.circular(Dimens.s),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              sensorName,
              style: AppTypography.label,
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: Dimens.s),
            sensorBodyType
          ],
        ),
      );
}
