import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:islamy/providers/AppConfigProvider.dart';

import '../my-theme_data.dart';
class RadioTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
     child: Column(

       children: [
         SizedBox(height: 100,),
         Image.asset('assets/images/radio_image.png'),

         SizedBox(height: 40,),
         Text('اذاعة القران الكريم',style:  provider.isDarkMode()?
         Theme.of(context).primaryTextTheme.subtitle1:
         Theme.of(context).primaryTextTheme.subtitle1,),
         SizedBox(height: 40,),


         Container(
           padding: EdgeInsets.symmetric(horizontal: 90),

           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,

             children: [


               InkWell(
                 child:
                 Icon(Icons.skip_previous,size: 25,color: provider.isDarkMode()?
                 MyTheme.yellowColor
                     : MyTheme.goldColor,),
               ),
               InkWell(
                 child:
                 Icon(Icons.play_arrow,size: 70,color: provider.isDarkMode()?
                 MyTheme.yellowColor
                     : MyTheme.goldColor,),
               ),
               InkWell(

                 child: Icon(Icons.skip_next,size: 25,color: provider.isDarkMode()?
                 MyTheme.yellowColor
                     : MyTheme.goldColor,),
               ),


             ],


           ),
         )


       ],



     ),


    );
  }
}
