import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamc_app/modules/quran/quran_view.dart';

class QuranListView extends StatelessWidget {
   QuranListView({super.key, required this.data});
  final SuraData data;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: Text(
              data.suraNumber,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        Container(
          height: 40,
          child: const VerticalDivider(
            thickness: 2,
          ),
        ),
        Expanded(
          child: Text(
           data.suraName,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
