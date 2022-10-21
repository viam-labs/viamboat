import 'package:flutter/material.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/style/app_typography.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            Strings.of(context).app_name,
            style: AppTypography.title,
          ),
        ),
        body: SafeArea(
          child: Column(
            children: const [
              Expanded(
                child: Center(
                  child: Text('Sensors Section'),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text('GPS Section'),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text('Camera Section'),
                ),
              ),
            ],
          ),
        ),
      );
}
