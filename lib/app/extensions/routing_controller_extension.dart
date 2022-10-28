import 'package:auto_route/auto_route.dart';
import 'package:fimber_io/fimber_io.dart';

extension PopUntilWithResult on StackRouter {
  Future<void> popUntilWithResult<T>(String name, T result) async {
    late String routeName;

    try {
      final previousRoutePageIndex = stack.length - 2;
      final previousRoutePage = stack[previousRoutePageIndex];

      routeName = previousRoutePage.routeData.name;
    } catch (e) {
      if (stack.length == 1) {
        Fimber.e('Trying to pop first item in AutoRoute stack!');

        return;
      }
    }

    if (routeName != name) {
      await popUntilWithResult(name, result);
    } else {
      await pop(result);
    }
  }
}

class PopNavigationResult {
  const PopNavigationResult.success();
}
