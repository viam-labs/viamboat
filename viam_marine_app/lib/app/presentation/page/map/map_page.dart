import 'package:flutter/material.dart';
import 'package:viam_marine/app/presentation/widgets/app_bar/viam_app_bar.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
        appBar: ViamAppBar(title: 'GPS Feed'),
        body: Center(
          child: Text('Map'),
        ),
      );
}
