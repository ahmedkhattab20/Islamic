
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/my-theme_data.dart';
import 'package:islamy/setting/language_bottom_sheet.dart';
import 'package:islamy/providers/AppConfigProvider.dart';
import 'package:islamy/setting/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';


class SettingTab extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);    //provider

    return Container(

      margin: EdgeInsets.all(15),
child:

    Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 50),
        Text( AppLocalizations.of(context)!.language,

          style: Theme.of(context).primaryTextTheme.subtitle1,),
        SizedBox(height: 20),
        Container(

          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color:
            provider.isDarkMode()?MyTheme.yellowColor:
            MyTheme.goldColor,
            borderRadius: BorderRadius.circular(10)
          ),
          child:
          InkWell(
            onTap:(){
              showlanguagebottomsheet(context);
            },
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(

                  provider.appLanguage == 'en'?
                  AppLocalizations.of(context)!.english
                      : AppLocalizations.of(context)!.arabic
                  ,

                  style: provider.isDarkMode()?
                  Theme.of(context).textTheme.subtitle1
                :Theme.of(context).textTheme.subtitle1
                ),
                Icon(Icons.arrow_drop_down_outlined,size: 25,)

              ],
            ),
          ),
        ),


        SizedBox(height: 50),
        Text( AppLocalizations.of(context)!.theming,

          style: Theme.of(context).primaryTextTheme.subtitle1,),
        SizedBox(height: 20),
        Container(

          padding: EdgeInsets.all(10),

          decoration: BoxDecoration(
              color:  provider.isDarkMode()?MyTheme.yellowColor:
              MyTheme.goldColor,
              borderRadius: BorderRadius.circular(10)
          ),
          child:
          InkWell(
            onTap:(){
              showThemebottomsheet(context);
            },
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(

                 provider.appMode == ThemeMode.light?
                 AppLocalizations.of(context)!.light

                     :  AppLocalizations.of(context)!.dark

                  ,

                  style: provider.isDarkMode()?
                  Theme.of(context).textTheme.subtitle1
                      :Theme.of(context).textTheme.subtitle1),
                Icon(Icons.arrow_drop_down_outlined,size: 25,)

              ],
            ),
          ),
        ),
      ],

    ),


    );

  }

  void showlanguagebottomsheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context){
         return LanguageBottomSheet();
        }
        );
  }

  void showThemebottomsheet(BuildContext context) {
    showModalBottomSheet(context: context,
        builder: (context){
      return ThemeBottomSheet();
        }
    );

  }
}
