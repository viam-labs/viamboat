import 'package:auto_route/auto_route.dart';
import 'package:viam_marine/app/presentation/page/add_boat/add_boat_page.dart';
import 'package:viam_marine/app/presentation/page/camera/camera_page.dart';
import 'package:viam_marine/app/presentation/page/change_boat_name/change_boat_name_page.dart';
import 'package:viam_marine/app/presentation/page/dashboard/dashboard_page.dart';
import 'package:viam_marine/app/presentation/page/main/main_page.dart';
import 'package:viam_marine/app/presentation/page/map/map_page.dart';
import 'package:viam_marine/app/presentation/page/scan_qr/scan_qr_page.dart';
import 'package:viam_marine/app/presentation/page/settings/settings_page.dart';
import 'package:viam_marine/app/presentation/page/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      initial: true,
    ),
    CustomRoute(
      page: AddBoatPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    AutoRoute(
      page: ScanQrPage,
    ),
    AutoRoute(
      page: MainPage,
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
        )
      ],
    ),
    CustomRoute(
      page: ChangeBoatNamePage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ],
)
class $MainRouter {}
