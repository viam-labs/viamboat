import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/main/cubit/main_cubit.dart';
import 'package:viam_marine/presentation/widgets/empty_state/empty_state_widget.dart';
import 'package:viam_marine/presentation/widgets/sensor_tile/sensor_tile.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

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
  Widget build(BuildContext context) => SafeArea(
        top: false,
        child: SizedBox(
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
        ),
      );
}
