import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/presentation/widgets/camera_tile/camera_tile.dart';
import 'package:viam_marine/app/presentation/widgets/map_tile/map_tile.dart';
import 'package:viam_marine/app/presentation/widgets/sensor_tile/sensor_tile.dart';
import 'package:viam_marine/app/presentation/widgets/webrtc_camera_widget/webrtc_camera_widget.dart';
import 'package:viam_marine/app/style/dimens.dart';

class DashboardPageBody extends StatelessWidget {
  final List<ViamAppResourceName> sensors;
  final List<ViamAppResourceName> positionSensors;

  const DashboardPageBody({
    required this.sensors,
    required this.positionSensors,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Dimens.m),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              WebrtcCameraWidget(),
              //TODO: Refactor when connection is rdy
              // ListView.separated(
              //   shrinkWrap: true,
              //   itemBuilder: (context, index) => const CameraTile(),
              //   itemCount: 1,
              //   separatorBuilder: (context, index) => const SizedBox(height: Dimens.m),
              //   physics: const NeverScrollableScrollPhysics(),
              // ),
            ],
          ),
        ),
      );
}
