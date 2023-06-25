import 'package:flutter/material.dart';
import 'colors_app.dart';

class UiConfig {
  UiConfig._();

  static String get title => 'Defensoria Pública de MS';

  static ThemeData get theme => ThemeData(
        primaryColor: ColorsApp.i.primary,
        primaryColorDark: const Color(0xff689F38),
        primaryColorLight: const Color(0xffDDE9C7),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(0xff689F38),
          textTheme: ButtonTextTheme.normal,
        ),
        scaffoldBackgroundColor: const Color(0XFFFAFAFA),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              const Color(0xff4FAD70),
            ),
          ),
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Color(0xff4FAD70),
        ),
      );
}
