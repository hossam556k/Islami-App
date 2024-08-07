import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamc_app/modules/quran/quran_view.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = "qurandetails";

   QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  @override
  Widget build(BuildContext context) {
    var data= ModalRoute.of(context)?.settings.arguments as SuraData;
    var theme = Theme.of(context); // Obtain the theme
    if(content.isEmpty) loadData(data.suraNumber);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/default_bg.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("اسلامي"), // Using const here is fine
          centerTitle: true,
        ),
        body: Container(
          margin: const EdgeInsets.only(
            top: 15,
            left: 30,
            right: 30,
            bottom: 80,

          ),
          padding: const EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30,
            bottom: 20,

          ),
          decoration:  BoxDecoration(
            color: const Color(0XFFF8F8F8).withOpacity(0.8),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة ${data.suraName}",
                    style: theme.textTheme.bodyMedium, // Use theme here
                  ),
                  SizedBox(width: 10,),
                  Icon(Icons.play_circle_fill_rounded),

                ],
              ),
              Divider(thickness: 2,),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) =>  Text(
                  "{ ${index + 1} } ${versrsList[index]}",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall?.copyWith(height: 1.8),
                ),
                itemCount: versrsList.length,),
              )

            ],
          ),
        ),
      ),
    );
  }

  String content="";
  List<String> versrsList=[]; 

  Future<void> loadData (String suraNumber) async{
     content = await rootBundle.loadString("assets/files/$suraNumber.txt");
     versrsList= content.split("\n");
    setState(() {


    });
  }
}
