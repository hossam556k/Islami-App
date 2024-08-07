import 'package:flutter/material.dart';
import 'package:islamc_app/modules/hadeth/hadeth_view.dart';
import 'package:islamc_app/modules/quran/quran_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamc_app/modules/radio/radio_view.dart';
import 'package:islamc_app/modules/settgins/settgins_view.dart';
import 'package:islamc_app/modules/tasbeh/tasbeh_view.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = "layout";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {

  int selectedIndex=0;
  List<Widget> screensList=[
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettginsView(),

  ];

  @override
  Widget build(BuildContext context) {
    var lang=AppLocalizations.of(context)!;

    return Container(
      decoration:  const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
              image: AssetImage("assets/images/default_bg.png"))),

      child: Scaffold(
        appBar:  AppBar(
          title: Text(lang.islami),

          centerTitle: true,

        ),
        body: screensList[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {

            });
         },

          items:  [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_quran.png"),), label: lang.quran),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")), label: lang.hadith),
            BottomNavigationBarItem(
                icon:ImageIcon(AssetImage("assets/images/icon_sebha.png")), label: lang.tasbeh),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_radio.png")), label:lang.radio),
            BottomNavigationBarItem(
                 icon: Icon(Icons.settings), label: lang.settgins),
          ],
        ),
      ),
    );
  }
}
