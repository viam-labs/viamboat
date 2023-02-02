/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesIllustrationsGen get illustrations =>
      const $AssetsImagesIllustrationsGen();
  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();
}

class $AssetsImagesIllustrationsGen {
  const $AssetsImagesIllustrationsGen();

  $AssetsImagesIllustrationsBackgroundGen get background =>
      const $AssetsImagesIllustrationsBackgroundGen();

  /// File path: assets/images/illustrations/piorun.png
  AssetGenImage get piorun =>
      const AssetGenImage('assets/images/illustrations/piorun.png');

  $AssetsImagesIllustrationsPlaceholderGen get placeholder =>
      const $AssetsImagesIllustrationsPlaceholderGen();

  /// List of all assets
  List<AssetGenImage> get values => [piorun];
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();

  $AssetsImagesSvgIconsGen get icons => const $AssetsImagesSvgIconsGen();
}

class $AssetsImagesIllustrationsBackgroundGen {
  const $AssetsImagesIllustrationsBackgroundGen();

  /// File path: assets/images/illustrations/background/background_img.webp
  AssetGenImage get backgroundImg => const AssetGenImage(
      'assets/images/illustrations/background/background_img.webp');

  /// List of all assets
  List<AssetGenImage> get values => [backgroundImg];
}

class $AssetsImagesIllustrationsPlaceholderGen {
  const $AssetsImagesIllustrationsPlaceholderGen();

  /// File path: assets/images/illustrations/placeholder/boat_image_placeholder.webp
  AssetGenImage get boatImagePlaceholder => const AssetGenImage(
      'assets/images/illustrations/placeholder/boat_image_placeholder.webp');

  /// List of all assets
  List<AssetGenImage> get values => [boatImagePlaceholder];
}

class $AssetsImagesSvgIconsGen {
  const $AssetsImagesSvgIconsGen();

  /// File path: assets/images/svg/icons/arrow.svg
  SvgGenImage get arrow =>
      const SvgGenImage('assets/images/svg/icons/arrow.svg');

  /// File path: assets/images/svg/icons/piorun.svg
  SvgGenImage get piorun =>
      const SvgGenImage('assets/images/svg/icons/piorun.svg');

  /// List of all assets
  List<SvgGenImage> get values => [arrow, piorun];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
