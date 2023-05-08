import 'package:auto_route/auto_route.dart';
import 'package:viam_marine/presentation/page/add_boat/add_boat_page.dart';
import 'package:viam_marine/presentation/page/analytics/analytics_page.dart';
import 'package:viam_marine/presentation/page/boat_list/boat_list_page.dart';
import 'package:viam_marine/presentation/page/camera/camera_page.dart';
import 'package:viam_marine/presentation/page/change_boat_name/change_boat_name_page.dart';
import 'package:viam_marine/presentation/page/connection_error/connection_error_page.dart';
import 'package:viam_marine/presentation/page/dashboard/dashboard_page.dart';
import 'package:viam_marine/presentation/page/filters/filters_page.dart';
import 'package:viam_marine/presentation/page/main/main_page.dart';
import 'package:viam_marine/presentation/page/map/map_page.dart';
import 'package:viam_marine/presentation/page/scan_qr/scan_qr_page.dart';
import 'package:viam_marine/presentation/page/select_robot/select_robot_page.dart';
import 'package:viam_marine/presentation/page/settings/settings_page.dart';
import 'package:viam_marine/presentation/page/splash/splash_page.dart';
import 'package:viam_marine/presentation/page/water_depth/water_depth_page.dart';
import 'package:viam_marine/presentation/page/water_temperature/water_temperature_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      page: SplashPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      initial: true,
    ),
    CustomRoute(
      page: AddBoatPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    AutoRoute(
      page: ScanQrPage,
    ),
    CustomRoute(
      page: MainPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      children: [
        AutoRoute(
          page: DashboardPage,
        ),
        AutoRoute(
          page: CameraPage,
        ),
        AutoRoute(
          page: MapPage,
        ),
        AutoRoute(
          page: SettingsPage,
        ),
        AutoRoute(
          page: AnalyticsPage,
        )
      ],
    ),
    CustomRoute(
      page: ChangeBoatNamePage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: BoatListPage,
      transitionsBuilder: TransitionsBuilders.slideRight,
    ),
    CustomRoute(
      page: ConnectionErrorPage,
      transitionsBuilder: TransitionsBuilders.slideRight,
    ),
    AutoRoute(
      page: WaterTemperaturePage,
    ),
    AutoRoute(
      page: WaterDepthPage,
    ),
    CustomRoute(
      page: SelectRobotPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    AutoRoute(
      page: FiltersPage,
    ),
  ],
)
class $MainRouter {}
