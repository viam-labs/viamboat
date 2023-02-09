import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:viam_marine/app/domain/error/model/viam_error.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

const offset = Offset(0, 2);

class CommonSensorBody extends StatelessWidget with ExtensionMixin {
  final String sensorName;
  final Widget sensorBodyType;
  final ViamError? error;

  const CommonSensorBody({
    required this.sensorBodyType,
    required this.sensorName,
    this.error,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(Dimens.s),
            decoration: BoxDecoration(
              color: error == ViamError.warning ? context.getColors().lightOrange : context.getColors().mainWhite,
              borderRadius: const BorderRadius.all(
                Radius.circular(Dimens.m),
              ),
              border: _hasError ? Border.all(color: context.getColors().orange) : null,
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  sensorName,
                  style: AppTypography.newBody.copyWith(
                    color: context.getColors().grey,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: Dimens.s),
                Center(
                  child: sensorBodyType,
                ),
              ],
            ),
          ),
          if (_hasError)
            Positioned(
              right: 0,
              child: SvgPicture.asset(Assets.images.svg.icons.warning.path),
            ),
        ],
      );

  bool get _hasError => error != null;
}
