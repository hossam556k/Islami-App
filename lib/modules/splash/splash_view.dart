import 'dart:async';

import 'package:flutter/cupertino.dart';

class SplashView extends StatefulWidget {
  static const  String routeName="/";
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 2),() {
      Navigator.pushReplacementNamed(context, "layout");
    }, );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/Group 8.png',fit: BoxFit.cover,);
  }
}
