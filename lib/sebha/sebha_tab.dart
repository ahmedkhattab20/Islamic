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
  double angle = 0.0;
int currenIndex =0;
int counter =0;
  List<String> tasbehat = [
    'سبحان الله',
    'الحمد لله ',
    'الله اكبر',
    'لا اله الا الله '
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var provider = Provider.of<AppConfigProvider>(context);

    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: mediaQuery.height * 0.43,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  child:
                  Image.asset(
                    provider.isDarkMode()?
                    'assets/images/sebha_head_dark.png' :'assets/images/sebha_head.png',
                    height: mediaQuery.height * 0.2,

                  ),
                  left: mediaQuery.width * 0.42,
                ),
                Positioned(
                  top: 40,
                  child: GestureDetector(
                    onTap: () {
                      sebhaClick();
                    },
                    child: Transform.rotate(
                      angle: angle,
                      child: Image.asset(
                        provider.isDarkMode()?
                        'assets/images/sebha_body_dark.png'  :'assets/images/sebha_body.png',
                        height: mediaQuery.height * 0.44,
                      ),
                    ),
                  ),
                ),
              ],
            ),
      ),
           Text('عدد التسبيحات',
             style: Theme.of(context).primaryTextTheme.headline2,) ,
  SizedBox(height: 20,),
  Container(
alignment: Alignment.center,
    width: 70,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color:provider.isDarkMode()? MyTheme.dark:MyTheme.lightgold
    ),
    child: Text(counter.toString()
    ,style: Theme.of(context).primaryTextTheme.subtitle1!.copyWith(
      fontSize: 32

    )),
  ),
          SizedBox(height: 30,),

          Container(
            alignment: Alignment.center,
            width: 140,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: provider.isDarkMode()?MyTheme.yellowColor:MyTheme.goldColor
            ),
            child: Text(tasbehat[currenIndex],
                style: Theme.of(context).primaryTextTheme.subtitle1!.copyWith(
              color: provider.isDarkMode()?MyTheme.blackColor:MyTheme.whiteColor,
                fontSize: 25

            )),
          ),


        ],
      ),
    );
  }

  sebhaClick(){

    setState(() {
      counter++;
    angle--;
    if(counter==11) {
      currenIndex++;
      counter=0;
    }
    if(currenIndex > tasbehat.length-1){
      currenIndex=0;
    }


    }
    );
  }

}
