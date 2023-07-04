import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:viam_marine/domain/error/model/viam_error.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/utils/viam_constants.dart';

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
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: context.read<SensorTileCubit>().onSensorTap,
        child: Stack(
          children: [
            Container(
              constraints: const BoxConstraints(minHeight: ViamConstants.sensorMinHeight),
              padding: const EdgeInsets.all(Dimens.s),
              decoration: BoxDecoration(
                color: _getColor(context),
                borderRadius: const BorderRadius.all(
                  Radius.circular(Dimens.m),
                ),
                border: _hasError ? Border.all(color: _getColor(context)) : null,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    sensorName,
                    style: AppTypography.body.copyWith(
                      color: context.getColors().grey,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: Dimens.m),
                  Center(
                    child: sensorBodyType,
                  ),
                ],
              ),
            ),
            if (_hasError)
              Positioned(
                right: 0,
                child: SvgPicture.asset(_errorIconPath),
              ),
          ],
        ),
      );

  bool get _hasError => error != null;

  String get _errorIconPath =>
      error!.isError ? Assets.images.svg.icons.error.path : Assets.images.svg.icons.warning.path;

  Color _getColor(BuildContext context, [bool isBorderColor = false]) {
    final colors = context.getColors();

    if (error?.isError ?? false) {
      return isBorderColor ? colors.red : colors.lightRed;
    } else if (error?.isWarning ?? false) {
      return isBorderColor ? colors.orange : colors.lightOrange;
    } else {
      return colors.mainWhite;
    }
  }
}
