import 'package:flutter/material.dart';

import '../../../presentation/route/route_list.dart';
import '../../../utils/dimension.dart';
import '../../../utils/log_utils.dart';
import '../../theme/text_utils.dart';
import 'splash_view.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final MediaQueryData data = MediaQuery.of(context);
    Dimension.setup(data);
    TextSize.textScaleFactor = data.textScaleFactor;

    Future.delayed(
      const Duration(seconds: 1),
    ).then((onValue) {
      _launchApp();
    });
  }

  void _launchApp() {
    Navigator.of(context).pushReplacementNamed(RouteList.dashBoardRoute);
  }

  @override
  Widget build(BuildContext context) {
    LogUtils.i('[SplashScreen] build');

    return Scaffold(
      body: SplashView(),
    );
  }
}