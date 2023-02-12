import 'package:flutter/material.dart';
import 'package:islamy/my-theme_data.dart';
import 'package:provider/provider.dart';
import 'package:islamy/providers/AppConfigProvider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';




class ThemeBottomSheet extends StatefulWidget {

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);    //provider
    return Container(

      padding: EdgeInsets.all(20),

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          InkWell(
            onTap: (){
              provider.changeTheme(ThemeMode.dark);
            },
            child: provider.isDarkMode()?
            getSelectedItemWidget( AppLocalizations.of(context)!.dark
            )
                :  getUnSelectedItemWidget( AppLocalizations.of(context)!.dark),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: (){
              provider.changeTheme(ThemeMode.light);


            },
          child: provider.appMode ==ThemeMode.light?
          getSelectedItemWidget( AppLocalizations.of(context)!.light)
              :  getUnSelectedItemWidget( AppLocalizations.of(context)!.light),
            ),

        ],
      ),



    );
  }
  Widget getSelectedItemWidget(String text){
    var provider =Provider.of<AppConfigProvider>(context);    //provider

    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("$text",style: TextStyle(
          color:  provider.isDarkMode()?
          MyTheme.yellowColor:
          MyTheme.goldColor,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),),
        Icon(Icons.check,size: 25,
          color:  provider.isDarkMode()?
        MyTheme.yellowColor:
        MyTheme.goldColor,),
      ],
    );

  }
  Widget getUnSelectedItemWidget(String text){
    var provider =Provider.of<AppConfigProvider>(context);    //provider

    return Text("$text",style: TextStyle(
    color:  provider.isDarkMode()?
    MyTheme.whiteColor:
    MyTheme.blackColor,
        fontWeight: FontWeight.bold,
        fontSize: 18,
    ),
    );
  }

}
