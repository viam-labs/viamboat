import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:viam_marine/app/domain/error/model/viam_error.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class CoordinatesTile extends StatelessWidget with ExtensionMixin {
  final double latitude;
  final double longitude;
  final ViamError? viamError;

  const CoordinatesTile({
    super.key,
    this.viamError,
    required this.latitude,
    required this.longitude,
  });

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.only(bottom: Dimens.xl),
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.m,
          vertical: Dimens.xm,
        ),
        decoration: BoxDecoration(
          color: _getColor(context),
          border: _hasError ? Border.all(color: _getColor(context, true)) : null,
          borderRadius: const BorderRadius.all(Radius.circular(Dimens.m)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              Strings.of(context).map_tile_boat_coordinates(latitude, longitude),
              style: AppTypography.newBody.copyWith(
                color: context.getColors().grey,
              ),
            ),
            if (_hasError) ...[
              const SizedBox(width: Dimens.l),
              SvgPicture.asset(_errorIconPath),
            ]
          ],
        ),
      );

  String get _errorIconPath =>
      viamError!.isError ? Assets.images.svg.icons.error.path : Assets.images.svg.icons.warning.path;

  bool get _hasError => viamError != null;

  Color _getColor(BuildContext context, [bool isBorderColor = false]) {
    final colors = context.getColors();

    if (viamError?.isWarning ?? false) {
      return isBorderColor ? colors.orange : colors.lightOrange;
    } else if (viamError?.isError ?? false) {
      return isBorderColor ? colors.red : colors.lightRed;
    } else {
      return colors.mainWhite;
    }
  }
}
