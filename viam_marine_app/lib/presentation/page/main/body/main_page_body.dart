import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/presentation/page/main/cubit/main_cubit.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';

class MainPageBody extends StatefulWidget {
  final List<ViamAppResourceName> sensors;
  final List<ViamAppResourceName> movementSensors;
  final List<ViamAppResourceName> cameraSensors;
  final List<String?> analyticsSensorNames;
  final RobotConfig robotConfig;

  const MainPageBody({
    required this.sensors,
    required this.movementSensors,
    required this.cameraSensors,
    required this.robotConfig,
    required this.analyticsSensorNames,
    super.key,
  });

  @override
  State<MainPageBody> createState() => _MainPageBodyState();
}

class _MainPageBodyState extends State<MainPageBody> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      context.read<MainCubit>().refreshApp();
    }
  }

  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
        routes: [
          DashboardRoute(
            sensors: widget.sensors,
            robotConfig: widget.robotConfig,
          ),
          AnalyticsRoute(
            config: widget.robotConfig,
            sensorNames: widget.analyticsSensorNames,
          ),
          MapRoute(resourceName: widget.movementSensors.firstOrNull),
          CameraRoute(cameraSensors: widget.cameraSensors),
          SettingsRoute(robotConfig: widget.robotConfig),
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
              icon: SvgPicture.asset(Assets.images.svg.icons.analytics.path),
              activeIcon: SvgPicture.asset(Assets.images.svg.icons.analyticsSelected.path),
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

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
