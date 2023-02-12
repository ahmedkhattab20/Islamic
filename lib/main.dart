
import 'package:flutter/material.dart';
import 'package:islamy/hadeth/hadeth_details_screen.dart';
import 'package:islamy/home_screen.dart';
import 'package:islamy/my-theme_data.dart';
import 'package:islamy/providers/AppConfigProvider.dart';
import 'package:islamy/quran/sura_name_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( ChangeNotifierProvider(
      create: (context)=>AppConfigProvider(),
      child: MyApp()));
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);  //provider
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,

      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        SuraNameDetails.routName:(context)=> SuraNameDetails(),
        HadethDetailsScreen.routName:(context) => HadethDetailsScreen()

      },
   theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
      themeMode: provider.appMode,
    );
  }
}
