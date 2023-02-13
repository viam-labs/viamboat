import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';

class MainPage extends StatelessWidget with ExtensionMixin {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
        routes: const [
          DashboardRoute(),
          MapRoute(),
          CameraRoute(),
          SettingsRoute(),
        ],
        bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            if (index != tabsRouter.activeIndex) {
              tabsRouter.setActiveIndex(index);
            }
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.map), label: 'map'),
            BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'camera'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ],
          unselectedItemColor: context.getColors().blue,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: context.getColors().blue,
        ),
      );
}
