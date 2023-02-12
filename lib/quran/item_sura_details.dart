import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemSuraDetails extends StatelessWidget {
 String details ;
 int index;
ItemSuraDetails({required this.details,required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text('$details (${index+1})',
        style: Theme.of(context).primaryTextTheme.headline2,
        textAlign: TextAlign.center,
textDirection: TextDirection.rtl,


      ),

    );
  }
}
