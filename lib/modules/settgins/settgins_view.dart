import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettginsView extends StatelessWidget {
  const SettginsView({super.key});


    @override
    Widget build(BuildContext context) {
      var theme= Theme.of(context);
      return Center(
        child: Text("Settgins View" ,style:theme.textTheme.titleLarge ,),
      );
    }
  }

