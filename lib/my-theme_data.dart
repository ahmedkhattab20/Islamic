
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static Color blackColor = Color(0xFF242424);
  static Color whiteColor = Colors.white;
  static Color goldColor = Color(0xFFB7935F);
  static Color lightgold = Color(0xCEBAA17C);

  static Color darkPrimary = Color(0xFF141A2E);
  static Color Lightdark = Color(0xFF192139);
  static Color dark = Color(0xFF141A2E);
  static Color yellowColor = Color(0xFFFACC1D);



  static ThemeData lightTheme = ThemeData(
    bottomSheetTheme:BottomSheetThemeData(
      backgroundColor: Colors.white
    ),
    scaffoldBackgroundColor: Colors.transparent,
    primaryTextTheme: TextTheme(

        headline1: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: blackColor,
        ),
        headline2: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),


        subtitle1: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
        subtitle2: TextStyle(
      fontSize:  20,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),



    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0, 
        iconTheme: IconThemeData(
        color: blackColor
    ),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
        unselectedItemColor: whiteColor,

    ),

  );
  ///////////////////////////////////////////////////////////////////////////////////////////////////////// dark theme
  static ThemeData darkTheme = ThemeData(
    bottomSheetTheme:BottomSheetThemeData(
        backgroundColor: Lightdark
    ),
primaryColor: darkPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
          color: whiteColor
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yellowColor,
      unselectedItemColor: whiteColor,

    ),
    primaryTextTheme: TextTheme(

        headline1: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: whiteColor,
        ),
        headline2: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: whiteColor,
      ),
        headline4: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: yellowColor,
      ),


        subtitle1: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: whiteColor,
        ),
        subtitle2: TextStyle(
        fontSize:  20,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),



    ),



  );
}
