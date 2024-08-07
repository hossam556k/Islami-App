import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamc_app/core/settgins_provider.dart';
import 'package:provider/provider.dart';

class SettginsView extends StatelessWidget {
  List<String> _lang = ["English", "عربي"];
  List<String> _theme=["Dark","Light"];


  SettginsView({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<SettginsProvider>(context);

    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

            Text("Language", style: theme.textTheme.bodyLarge),

          SizedBox(height:40 ,),
          CustomDropdown<String>(
            hintText: '',
            items: _lang,

            initialItem: provider.currentLanguageCode=="en" ? _lang[0] : _lang[1],
            onChanged: (value) {
             if(value=="English"){
               provider.changeLanguage("en");
             }
             if(value=="عربي"){
               provider.changeLanguage("ar");
             }
            },

          ),
          SizedBox(height: 40,),
          CustomDropdown<String>(
            hintText: '',
            items: _theme,
            initialItem: _theme[0],
            onChanged: (value) {
              print(value);
            },
          ),
        ],
      ),
    );
  }
}
