import 'package:flutter/material.dart';
import 'package:viam_marine/style/app_typography.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Viam Marine',
            style: AppTypography.title,
          ),
        ),
        body: Column(
          children: const [
            Expanded(
              child: Center(child: Text('Sensors Section')),
            ),
            Expanded(
              child: Center(child: Text('Gps Section')),
            ),
            Expanded(
              child: Center(child: Text('Camera Section')),
            ),
          ],
        ),
      );
}
