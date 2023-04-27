import 'package:flutter/material.dart';

class SelectRobotPageBody extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;

  const SelectRobotPageBody({
    super.key,
    this.appBar,
    required this.body,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: appBar,
        body: SafeArea(child: body),
      );
}
