import 'package:flutter/material.dart';

final ThemeData themeConfig = ThemeData(
    primaryColor: Colors.amber[400],
    buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
        disabledColor: Colors.black38,
        hoverColor: Colors.blue[700]),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            textStyle:
                const TextStyle(color: Color.fromARGB(255, 255, 255, 255)))));
