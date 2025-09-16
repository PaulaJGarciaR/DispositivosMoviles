import 'package:flutter/material.dart';

const colorList = <Color>[
Colors.indigo,
Colors.indigoAccent,
Color.fromARGB(255, 231, 70, 124),
Color.fromARGB(255, 253, 84, 141),
];

class AppTheme {

  final int selectColor;
  final bool dark;

  AppTheme({this.dark=false,this.selectColor=0});

  ThemeData getTheme()=> ThemeData(
    colorSchemeSeed: colorList[selectColor],
    brightness: dark ? Brightness.dark:Brightness.light,
    appBarTheme: AppBarTheme(
      centerTitle: false,
      backgroundColor: Color.fromARGB(255, 253, 84, 141),
    )
  );
}
