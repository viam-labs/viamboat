import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/camera/body/camera_page_loaded_body.dart';
import 'package:viam_marine/presentation/page/camera/cubit/camera_page_cubit.dart';
import 'package:viam_marine/presentation/page/camera/cubit/camera_page_state.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/presentation/widgets/empty_state/empty_state_widget.dart';
import 'package:viam_marine/presentation/widgets/loading_indicator/app_loading_indicator.dart';

class CameraPage extends StatelessWidget with AutoRouteWrapper {
  final List<ViamAppResourceName> cameraSensors;
  final RobotConfig robotConfig;

  const CameraPage({
    required this.cameraSensors,
    required this.robotConfig,
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<CameraPageCubit>()..init(robotConfig),
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: ViamAppBar(
          title: Strings.of(context).camera_page_camera_feed,
        ),
        body: SafeArea(
          child: BlocBuilder<CameraPageCubit, CameraPageState>(
            builder: (_, state) => state.maybeWhen(
              loading: AppLoadingIndicator.new,
              loaded: () => CameraPageLoadedBody(cameraSensors: cameraSensors),
              error: () => EmptyStateWidget(
                iconPath: Assets.images.svg.icons.cameraEmptyState.path,
                title: Strings.of(context).error_something_went_wrong,
                subtitle: Strings.of(context).camera_empty_state_subtitle,
              ),
              orElse: SizedBox.shrink,
            ),
          ),
        ),
      );
}
