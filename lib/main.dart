import 'package:flutter/material.dart';
import 'package:islamc_app/core/application_theme_manager.dart';
import 'package:islamc_app/layout/layout_view.dart';
import 'package:islamc_app/modules/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ApplicationThemeManager.lightThemeData,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        SplashView.routeName: (context) => SplashView(),
        LayoutView.routeName : (context)=> LayoutView(),
      },


    );
  }
}

