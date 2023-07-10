import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class MainRouter extends $MainRouter {
  MainRouter(GlobalKey<NavigatorState> navigatorKey) : super(navigatorKey: navigatorKey);

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    CustomRoute(
      page: SplashRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      path: '/',
    ),
    CustomRoute(
      page: LoginRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    AutoRoute(page: ScanQrRoute.page),
    CustomRoute(
      page: MainRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      children: [
        AutoRoute(page: DashboardRoute.page),
        AutoRoute(page: CameraRoute.page),
        AutoRoute(page: MapRoute.page),
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: AnalyticsRoute.page),
      ],
    ),
    CustomRoute(
      page: ChangeBoatNameRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: BoatListRoute.page,
      transitionsBuilder: TransitionsBuilders.slideRight,
    ),
    CustomRoute(
      page: ConnectionErrorRoute.page,
      transitionsBuilder: TransitionsBuilders.slideRight,
    ),
    AutoRoute(page: WaterTemperatureRoute.page),
    AutoRoute(page: WaterDepthRoute.page),
    CustomRoute(
      page: SelectRobotRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    AutoRoute(page: FiltersRoute.page),
    AutoRoute(page: DepthOverTimeRoute.page),
    AutoRoute(page: FuelConsumptionPerMileRoute.page),
    AutoRoute(page: FuelConsumptionOverTimeRoute.page),
  ];
}
