import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/camera/body/camera_page_loaded_body.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';

@RoutePage()
class CameraPage extends StatelessWidget {
  final List<ViamAppResourceName> cameraSensors;

  const CameraPage({
    super.key,
    required this.cameraSensors,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: ViamAppBar(
          title: Strings.of(context).camera_page_camera_feed,
        ),
        body: SafeArea(
          child: CameraPageLoadedBody(cameraSensors: cameraSensors),
        ),
      );
}
