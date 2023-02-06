import 'package:flutter/material.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

const offset = Offset(0, 2);

class CommonSensorBody extends StatelessWidget with ExtensionMixin {
  final String sensorName;
  final Widget sensorBodyType;

  const CommonSensorBody({
    required this.sensorBodyType,
    required this.sensorName,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(Dimens.s),
        decoration: BoxDecoration(
          color: context.getColors().mainWhite,
          borderRadius: const BorderRadius.all(
            Radius.circular(Dimens.m),
          ),
          boxShadow: [
            BoxShadow(
              color: context.getColors().shadow,
              blurRadius: 24,
              spreadRadius: 3,
              offset: offset,
            ),
          ],
        ),
        child: Column(
          children: [
            Text(
              sensorName,
              style: AppTypography.newBody.copyWith(
                color: context.getColors().grey,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: Dimens.s),
            sensorBodyType,
          ],
        ),
      );
}
