import 'package:auto_route/auto_route.dart';
import 'package:viam_marine/app/presentation/page/add_boat/add_boat_page.dart';
import 'package:viam_marine/app/presentation/page/dashboard/dashboard_page.dart';
import 'package:viam_marine/app/presentation/page/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      initial: true,
    ),
    AutoRoute(
      page: DashboardPage,
    ),
    AutoRoute(
      page: AddBoatPage,
    )
  ],
)
class $MainRouter {}
