// ignore_for_file: prefer_const_constructors
import 'package:provider/provider.dart';
import 'package:islamy/providers/AppConfigProvider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy/hadeth/hadeth_tab.dart';
import 'package:islamy/my-theme_data.dart';
import 'package:islamy/quran/quran_tab.dart';
import 'package:islamy/radio/radio_tab.dart';
import 'package:islamy/sebha/sebha_tab.dart';
import 'package:islamy/setting/setting_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        provider.isDarkMode()?
        Image.asset(
          'assets/images/main_background_dark.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ):
        Image.asset(
      'assets/images/main_background.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    ),

        Scaffold(
          appBar: AppBar(
            //  centerTitle: true,
            title: Text(
                AppLocalizations.of(context)!.islami,
                style: Theme.of(context).primaryTextTheme.headline1),
          ),
          bottomNavigationBar:  Theme(
            data: Theme.of(context).copyWith(canvasColor:
                provider.isDarkMode()?
            MyTheme.darkPrimary:
                    MyTheme.goldColor
            ),
            child: BottomNavigationBar(
              currentIndex: selected,
              onTap: (index){
                selected = index;
                setState(() {

                });
              },
              items: [

                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/quran_icon.png'),
                    ),

                    label: AppLocalizations.of(context)!.quran
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/hadeth_icon.png'),
                    ),

                    label: AppLocalizations.of(context)!.hadeth,
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/radio_icon.png'),
                    ),

                    label: AppLocalizations.of(context)!.radio,
                ),

                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/sebha_icon.png'),
                    ),

                    label:AppLocalizations.of(context)!.sebha,
                ),
                BottomNavigationBarItem(
                    icon: (
                        Icon(Icons.settings,)),


                    label: AppLocalizations.of(context)!.setting

                ),


              ],
            ),
          ),
          body:tabs[selected],
        ),
      ],
    );
  }
  List<Widget> tabs =[
    QuranTab(),HadethTab(),RadioTab(),SebhaTab(),SettingTab()

  ];
}
