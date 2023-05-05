import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SelectRobotPageBody extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;

  const SelectRobotPageBody({
    super.key,
    this.appBar,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarBrightness: Brightness.light,
    ));
    return Scaffold(
      appBar: appBar,
      body: SafeArea(child: body),
    );
  }
}
