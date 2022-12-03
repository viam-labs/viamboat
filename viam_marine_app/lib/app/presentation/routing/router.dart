import 'package:auto_route/auto_route.dart';
import 'package:viam_marine/app/presentation/page/dashboard/dashboard_page.dart';
import 'package:viam_marine/app/presentation/page/sign_in/sing_in.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SignIn,
      initial: true,
    ),
    AutoRoute(
      page: DashboardPage,
    )
  ],
)
class $MainRouter {}
