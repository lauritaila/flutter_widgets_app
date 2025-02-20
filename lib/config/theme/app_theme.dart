
import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.red,
  Colors.green,
  Colors.pinkAccent,
  Colors.deepPurple
];

class AppTheme {

  final int selectedColor;

  AppTheme({this.selectedColor = 0}): 
    assert(selectedColor >= 0 , "Selected must be greater than 0"), 
    assert(selectedColor < colorList.length, "Selected must be less or equal than ${colorList.length - 1}");

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false)
    );

}