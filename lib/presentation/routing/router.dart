import 'package:auto_route/auto_route.dart';
import 'package:viam_marine/presentation/page/dashboard/dashboard_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: DashboardPage,
      initial: true,
    )
  ],
)
class $MainRouter {}
