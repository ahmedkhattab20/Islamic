import 'dart:math';
import 'package:provider/provider.dart';
import 'package:islamy/providers/AppConfigProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/quran/item_sura_details.dart';

import '../my-theme_data.dart';

class SuraNameDetails extends StatefulWidget {
  static const String routName = 'sura-details';

  @override
  State<SuraNameDetails> createState() => _SuraNameDetailsState();
}

class _SuraNameDetailsState extends State<SuraNameDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);    //provider

    var args =
        ModalRoute.of(context)?.settings.arguments as SuraNameDetailsArgs;
    if (verses.isEmpty) {
      LoadFile(args.index);
    }

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
            title: Text('${args.name}',


                style:
                Theme.of(context).primaryTextTheme.headline1),
          ),
          body: Container(
            decoration: BoxDecoration(
                color:provider.isDarkMode()?
                MyTheme.darkPrimary:
                MyTheme.whiteColor,
                borderRadius: BorderRadius.circular(24)),
            margin: EdgeInsets.only(left: 24, right: 24, bottom: 25, top: 80),
            padding: EdgeInsets.all(10),
            child: verses.length == 0
                ? Center(
                    child: CircularProgressIndicator(

                    color:  provider.isDarkMode()?
                    MyTheme.yellowColor:
                    MyTheme.goldColor,
                  ))
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return ItemSuraDetails(
                        details: verses[index],
                        index: index,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        thickness: 2,
                        color: provider.isDarkMode()?
                        MyTheme.yellowColor:
                        MyTheme.goldColor,
                      );
                    },
                    itemCount: verses.length),
          )),
    ]);
  }

  void LoadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;

    setState(() {});
  }
}

class SuraNameDetailsArgs {
  String name;
  int index;

  SuraNameDetailsArgs({required this.name, required this.index});
}
