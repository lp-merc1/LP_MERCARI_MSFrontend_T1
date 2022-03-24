import 'package:flutter/material.dart';

import 'package:healthcare_app/Screens/splash.dart';
import 'package:healthcare_app/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Care',
      theme: AppTheme.lightTheme,
      routes: {
        "/": (context) => SplashPage(),
      },
    );
  }
}
