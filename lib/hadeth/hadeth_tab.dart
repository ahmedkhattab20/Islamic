import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/hadeth/item_hadeth_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../my-theme_data.dart';
import 'package:provider/provider.dart';
import 'package:islamy/providers/AppConfigProvider.dart';


class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethItem> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    if(allHadeth.isEmpty){
      LoadHadethFile();

    }
    return Container(
        child: Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset("assets/images/hadeth_image.png"),
        ),
        Divider(
          thickness: 4,
          color: provider.isDarkMode()?
          MyTheme.yellowColor
              : MyTheme.goldColor
        ),
        Text(
            AppLocalizations.of(context)!.hadethname
            ,
          style: Theme.of(context).primaryTextTheme.subtitle1,
        ),
        Divider(
          thickness: 4,
          color:provider.isDarkMode()?
          MyTheme.yellowColor
              : MyTheme.goldColor
        ),
        Expanded(
          flex: 2,
          child: allHadeth.length == 0
              ? Center(
                  child: CircularProgressIndicator(
                      color:provider.isDarkMode()?
                      MyTheme.yellowColor
                          : MyTheme.goldColor

                  ),
                )
              :
          ListView.separated(
                  itemBuilder: (context, index) {
                    return ItemHadethName(hadethItem: allHadeth[index],


                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      thickness: 2,
                      color:provider.isDarkMode()?
                      MyTheme.yellowColor
                          : MyTheme.goldColor
                    );
                  },
                  itemCount: allHadeth.length),
        ),
      ],
    ));
  }

  void LoadHadethFile() async {
    String hadethcontent =
        await rootBundle.loadString('assets/files/ahadeth.txt');

    List<String> allhadethcontent = hadethcontent.split('#\r\n');
    for (int i = 0; i < allhadethcontent.length; i++) {
      List<String> hadethcontentLines= allhadethcontent[i].split('\n');
      String title = hadethcontentLines[0];
      hadethcontentLines.removeAt(0);
      HadethItem hadethItem =
          HadethItem(title: title, content: hadethcontentLines);
      allHadeth.add(hadethItem);

    }
    setState(() {}
    );
  }
}

class HadethItem {
  String title;
  List<String> content;
  HadethItem({required this.title, required this.content});
}
