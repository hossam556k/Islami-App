import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamc_app/modules/hadeth/hadeth_view.dart';

class HadethViewDetails extends StatelessWidget {
  const HadethViewDetails({super.key});

  static const String routename = "hadethDeatials";

  Widget build(BuildContext context) {
    var data=ModalRoute.of(context)?.settings.arguments as HadithData;
    var theme = Theme.of(context); // Obtain  the theme
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
                    data.title,
                    style: theme.textTheme.bodyMedium, // Use theme here
                  ),

                ],
              ),
              Divider(thickness: 2,),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) =>  Text(
                 data.body,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall?.copyWith(height: 2),
                ),
                  itemCount: 6),
              )

            ],
          ),
        ),
      ),
    );
  }

}
