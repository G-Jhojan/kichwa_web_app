import 'package:flutter/material.dart';

const colorList = [
  Colors.blue,
  Colors.green,
  Colors.purple,
  Colors.red,
  Colors.orange,
  Colors.amber,
  Colors.teal,
  Colors.pink,
  Colors.brown,
  Colors.grey,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0, 'Selected color must be greater than 0'),
       assert(selectedColor < colorList.length, 'Selected color must');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: true
    )
  );

}
