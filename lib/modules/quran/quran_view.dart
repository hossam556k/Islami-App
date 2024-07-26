import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});
  @override
  Widget build(BuildContext context) {
    var theme= Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/qur2an_screen_logo.png")
      ],
    );
  }
}
