import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamc_app/core/application_theme_manager.dart';
import 'package:islamc_app/core/settgins_provider.dart';
import 'package:islamc_app/layout/layout_view.dart';
import 'package:islamc_app/modules/hadeth/hadeth_view_details.dart';
import 'package:islamc_app/modules/quran/quran_details.dart';
import 'package:islamc_app/modules/splash/splash_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(child: const MyApp(),
  create: (context) => SettginsProvider(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider= Provider.of<SettginsProvider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: provider.currentThemeMode,
      theme: ApplicationThemeManager.lightThemeData,
      darkTheme: ApplicationThemeManager.darkThemeData  ,
      locale: Locale(provider.currentLanguageCode),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: '/',
      routes: {
        SplashView.routeName: (context) => SplashView(),
        LayoutView.routeName : (context)=> LayoutView(),
        QuranDetails.routeName:(context)=> QuranDetails(),
        HadethViewDetails.routename:(context)=> HadethViewDetails(),
      },


    );
  }
}

