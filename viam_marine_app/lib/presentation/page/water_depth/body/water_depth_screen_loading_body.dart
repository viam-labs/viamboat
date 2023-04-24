import 'package:flutter/material.dart';
import 'package:viam_marine/presentation/widgets/loading_indicator/app_loading_indicator.dart';

class WaterDepthScreenLoadingBody extends StatelessWidget {
  const WaterDepthScreenLoadingBody({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: AppLoadingIndicator(),
      );
}
