import 'package:flutter/material.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/page/dashboard/widgets/drawer/viam_drawer.dart';
import 'package:viam_marine/app/style/app_typography.dart';

class DashboardScaffoldWrapper extends StatelessWidget {
  final Widget body;
  final bool showAppBar;
  final String? boatName;

  const DashboardScaffoldWrapper({
    required this.body,
    required this.showAppBar,
    this.boatName,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _buildAppBar(context),
        drawer: const ViamDrawer(),
        body: SafeArea(
          child: body,
        ),
      );

  PreferredSizeWidget? _buildAppBar(BuildContext context) => showAppBar
      ? AppBar(
          centerTitle: true,
          title: Column(
            children: [
              Text(
                Strings.of(context).app_name,
                style: AppTypography.title,
              ),
              Text(
                boatName ?? '',
                style: AppTypography.title,
              ),
            ],
          ),
        )
      : null;
}
