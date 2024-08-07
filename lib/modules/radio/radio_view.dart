import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio_player/radio_player.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  @override
  Widget build(BuildContext context) {
    RadioPlayer radioPlayer = RadioPlayer();

    var theme= Theme.of(context);
    return Center(
      child: Text("Radio View" ,style:theme.textTheme.titleLarge ,),

    );

  }
}
