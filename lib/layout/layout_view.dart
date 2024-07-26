import 'package:flutter/material.dart';
import 'package:islamc_app/modules/hadeth/hadeth_view.dart';
import 'package:islamc_app/modules/quran/quran_view.dart';
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
    return Container(
      decoration:  const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/default_bg.png"))),
      child: Scaffold(
        appBar:  AppBar(
          title: const Text("اسلامي"),
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

          items: const [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_quran.png"),), label: "Quran"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")), label: "Hadeth"),
            BottomNavigationBarItem(
                icon:ImageIcon(AssetImage("assets/images/icon_sebha.png")), label: "Tasbeh"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_radio.png")), label: "Radio"),
            BottomNavigationBarItem(
                 icon: Icon(Icons.settings), label: "Settgins"),
          ],
        ),
      ),
    );
  }
}
