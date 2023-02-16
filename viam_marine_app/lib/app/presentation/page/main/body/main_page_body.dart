import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';

class MainPageBody extends StatelessWidget {
  final List<ViamAppResourceName> sensors;
  final List<ViamAppResourceName> movementSensors;
  final List<ViamAppResourceName> cameraSensors;

  const MainPageBody({
    required this.sensors,
    required this.movementSensors,
    required this.cameraSensors,
    super.key,
  });

  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
        routes: [
          DashboardRoute(sensors: sensors),
          MapRoute(resourceName: movementSensors.first),
          CameraRoute(cameraSensors: cameraSensors),
          const SettingsRoute(),
        ],
        bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            if (index != tabsRouter.activeIndex) {
              tabsRouter.setActiveIndex(index);
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.images.svg.icons.sensors.path),
              activeIcon: SvgPicture.asset(Assets.images.svg.icons.sensorsSelected.path),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.images.svg.icons.pin.path),
              activeIcon: SvgPicture.asset(Assets.images.svg.icons.pinSelected.path),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.images.svg.icons.camera.path),
              activeIcon: SvgPicture.asset(Assets.images.svg.icons.cameraSelected.path),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.images.svg.icons.settings.path),
              activeIcon: SvgPicture.asset(Assets.images.svg.icons.settingsSelected.path),
              label: '',
            ),
          ],
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      );
}
