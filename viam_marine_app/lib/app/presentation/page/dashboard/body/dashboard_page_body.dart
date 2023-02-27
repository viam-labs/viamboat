import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_cubit.dart';
import 'package:viam_marine/app/presentation/widgets/empty_state/empty_state_widget.dart';
import 'package:viam_marine/app/presentation/widgets/sensor_tile/sensor_tile.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

part './dashboard_body_card.dart';

const distanceFromTop = 172.0;
const imgHeight = 188.0;

class DashboardPageBody extends StatelessWidget with ExtensionMixin {
  final List<ViamAppResourceName> sensors;
  final String boatName;

  const DashboardPageBody({
    required this.sensors,
    required this.boatName,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        height: double.maxFinite,
        child: Stack(
          children: [
            Assets.images.illustrations.placeholder.boatImagePlaceholder.image(
              height: imgHeight,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Positioned.fill(
              top: distanceFromTop,
              child: _DashboardBodyCard(
                boatName: boatName,
                sensors: sensors,
              ),
            ),
          ],
        ),
      );
}
