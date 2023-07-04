import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:top_snackbar_flutter/safe_area_values.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:viam_marine/domain/error/model/viam_error.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/widgets/sensor_tile/body/common/common_sensor_body.dart';
import 'package:viam_marine/presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart';
import 'package:viam_marine/presentation/widgets/sensor_tile/cubit/sensor_tile_state.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/style/number_formats.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:viam_marine/utils/ignore_else_state.dart';
import 'package:viam_marine/utils/viam_constants.dart';

part 'body/sensor_tile_normal_body.dart';

part 'body/sensor_tile_graphical_body.dart';

part 'body/sensor_tile_loading_body.dart';

class SensorTile extends StatefulWidget {
  final ViamAppResourceName _resourceName;

  const SensorTile(
    this._resourceName, {
    super.key,
  });

  @override
  State<SensorTile> createState() => _SensorTileState();
}

class _SensorTileState extends State<SensorTile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<SensorTileCubit>()..init(widget._resourceName),
        child: BlocConsumer<SensorTileCubit, SensorTileState>(
          buildWhen: (_, state) => state is! SensorTileStateTopSnackbarError,
          listenWhen: (_, state) => state is SensorTileStateTopSnackbarError,
          listener: _listener,
          builder: (context, state) => state.maybeWhen(
            loading: () => const _SensorTileLoadingBody(),
            graphicalSensorLoaded: (name, levelPercentage, capacity) => _SensorTileGraphicalBody(
              sensorName: name,
              levelPercentage: levelPercentage,
              capacity: capacity,
            ),
            sensorLoaded: (name, value) => _SensorTileNormalBody(
              sensorName: name,
              value: value,
            ),
            normalSensorError: (viamError, lastName, lastValue) => _SensorTileNormalBody(
              sensorName: lastName ?? '',
              value: lastValue ?? 0.0,
              error: viamError,
            ),
            graphicalSensorError: (
              viamError,
              lastName,
              lastLevelPercantage,
              lastCapacity,
            ) =>
                _SensorTileGraphicalBody(
              sensorName: lastName ?? '',
              levelPercentage: lastLevelPercantage ?? 0.0,
              capacity: lastCapacity ?? 0.0,
              error: viamError,
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      );

  void _listener(BuildContext context, SensorTileState state) {
    state.maybeWhen(
      showTopSnackbarError: (errorType) {
        _showTopSnackbarError(errorType);
      },
      orElse: doNothing,
    );
  }

  void _showTopSnackbarError(ViamError errorType) {
    final padding = MediaQuery.of(context);
    final overlay = AutoRouter.of(context).navigatorKey.currentState!.overlay!;
    showTopSnackBar(
      overlay,
      Material(
        child: ColoredBox(
          color: _getStatusBarColor(errorType),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                color: errorType == ViamError.error
                    ? context.getColors(listen: false).red
                    : context.getColors(listen: false).orange,
              )),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: padding.padding.top),
              child: ColoredBox(
                color: _getTopToastColor(errorType),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimens.m,
                    vertical: Dimens.s,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(errorType == ViamError.error
                          ? Assets.images.svg.icons.error.path
                          : Assets.images.svg.icons.warning.path),
                      const SizedBox(width: Dimens.m),
                      Expanded(
                        child: Text(
                          errorType == ViamError.error
                              ? Strings.of(context).sensor_error
                              : Strings.of(context).sensor_warning,
                          textAlign: TextAlign.left,
                          style: AppTypography.body.copyWith(
                            color: _getStatusBarColor(errorType),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      padding: EdgeInsets.zero,
      safeAreaValues: const SafeAreaValues(top: false),
      curve: Curves.fastLinearToSlowEaseIn,
      dismissType: (DismissType.onSwipe),
      dismissDirection: [DismissDirection.up],
    );
  }

  Color _getTopToastColor(ViamError errorType) => errorType == ViamError.error
      ? context.getColors(listen: false).lightRed
      : context.getColors(listen: false).lightOrange;

  Color _getStatusBarColor(ViamError errorType) =>
      errorType == ViamError.error ? context.getColors(listen: false).red : context.getColors(listen: false).orange;
}
