/*


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy/my-theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:islamy/providers/AppConfigProvider.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> tasbehat = [
    'سبحان الله',
    'الحمد لله ',
    'الله اكبر',
    'لا اله الا الله '
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context).size;
    var provider = Provider.of<AppConfigProvider>(context);
    int counter =0;

    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            height: mediaQuery.height*0.42,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                provider.isDarkMode()
                    ?
                Positioned(child:
                Image.asset('assets/images/sebha_head_dark.png'),
                  left: mediaQuery.width*0.23,
                  height: mediaQuery.height*0.09,

                )
                    :
                Positioned(child:
                Image.asset('assets/images/sebha_head.png'),
                  left: mediaQuery.width*0.23,
                  height: mediaQuery.height*0.09,

                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 75),
                  child: GestureDetector(
                    onTap: () {
                    },
                    child: Transform.rotate(
                      angle: 75,
                      child:
                      InkWell(
                        borderRadius: BorderRadius.circular(115),
                        onTap: (){
                          counter++;

                        },
                        child: provider.isDarkMode()
                            ?
                        Positioned(child:
                        Image.asset('assets/images/sebha_body_dark.png'),
                          height: mediaQuery.height*0.5,
                          top: 60,
                          left: mediaQuery.width*0.2,


                        )
                            :
                        Positioned(child:
                        Image.asset('assets/images/sebha_body.png'),
                          height: mediaQuery.height*0.3,
                          left: mediaQuery.width*0.2,


                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            AppLocalizations.of(context)!.tasbeh,
            style: provider.isDarkMode()
                ? Theme.of(context).primaryTextTheme.subtitle1
                : Theme.of(context).primaryTextTheme.subtitle1,
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:
                      provider.isDarkMode() ? MyTheme.dark : MyTheme.goldColor),
              child: Container(
                width: 60,
                height: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$counter",
                      style: provider.isDarkMode()
                          ? Theme.of(context).primaryTextTheme.subtitle1
                          : Theme.of(context).primaryTextTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: provider.isDarkMode()
                      ? MyTheme.yellowColor
                      : MyTheme.goldColor),
              child: Container(
                width: 60,
                height: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("الحمد لله"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


 */