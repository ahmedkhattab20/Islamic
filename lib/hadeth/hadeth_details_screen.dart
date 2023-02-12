import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/hadeth/hadeth_tab.dart';
import 'package:islamy/hadeth/item_hadeth_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/quran/item_sura_details.dart';
import 'package:provider/provider.dart';
import 'package:islamy/providers/AppConfigProvider.dart';
import '../my-theme_data.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routName = 'hadeth-details';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);    //provider

    var args = ModalRoute.of(context)?.settings.arguments as HadethItem;
    if (verses.isEmpty) {}

    return Stack(children: [
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
            title: Text('${args.title}',
                style: Theme.of(context).primaryTextTheme.headline1),
          ),
          body: Container(
             decoration: BoxDecoration(
                color:provider.isDarkMode()?
                  MyTheme.darkPrimary:
                  MyTheme.whiteColor,
                 borderRadius:
                 BorderRadius.circular(24)),
            margin: EdgeInsets.only(left: 24, right: 24, bottom: 25, top: 80),
            padding: EdgeInsets.all(10),
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return ItemHadethDetails(details: args.content[index]

                  );
                },

                itemCount: args.content.length),
          )),
    ]
    );
  }
}
