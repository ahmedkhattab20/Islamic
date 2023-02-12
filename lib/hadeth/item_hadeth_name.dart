import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy/hadeth/hadeth_details_screen.dart';
import 'package:islamy/hadeth/hadeth_tab.dart';
import 'package:islamy/quran/sura_name_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ItemHadethName extends StatelessWidget{
HadethItem hadethItem;

  ItemHadethName( {required this.hadethItem});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadethDetailsScreen.routName,
       arguments: hadethItem

        );

      },
      child: Text(hadethItem.title,
      style: Theme.of(context).primaryTextTheme.subtitle1,
        textAlign: TextAlign.center,

      ),
    );
  }
}
