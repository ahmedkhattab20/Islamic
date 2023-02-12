import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ItemHadethDetails extends StatelessWidget {
  String details ;
ItemHadethDetails({required this.details});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text('$details',
        style:
        Theme.of(context).primaryTextTheme.headline2,
        textAlign: TextAlign.center,
textDirection: TextDirection.rtl,


      ),

    );
  }
}
