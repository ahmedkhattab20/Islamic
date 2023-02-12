import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy/quran/sura_name_details.dart';
import 'package:provider/provider.dart';
import 'package:islamy/providers/AppConfigProvider.dart';


class ItemSuraName extends StatelessWidget{
String name;
int index ;
ItemSuraName( {required this.name, required this.index});
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SuraNameDetails.routName,
        arguments: SuraNameDetailsArgs(name: name, index: index)

        );

      },
      child: Text(name,
      style: Theme.of(context).primaryTextTheme.subtitle1,
        textAlign: TextAlign.center,

      ),
    );
  }
}
