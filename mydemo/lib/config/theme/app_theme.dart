import 'package:flutter/material.dart';

const colorlist = <Color> [
  Colors.red,
  Colors.indigoAccent,
  Colors.blue,
  Colors.yellow,
  Color.fromARGB(255, 200, 100, 20),
];

class AppTheme {

  final int selectColor;
  final bool dark;

  AppTheme({this.dark = false , this.selectColor = 0});

 ThemeData getTheme()=> ThemeData(
  colorSchemeSeed: colorlist[selectColor],
  brightness: dark ? Brightness.dark:Brightness.light,
  appBarTheme: AppBarTheme(
    centerTitle: false,
    backgroundColor: colorlist[selectColor],
  )
 );

}