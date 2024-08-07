import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0XFFB7935F);
  static ThemeData lightThemeData = ThemeData(
    primaryColor: primaryColor,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 30,
          color: Colors.black,
          fontWeight: FontWeight.bold,

        )),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      selectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      backgroundColor: Color(0XFFB7935F),
      selectedItemColor: Color(0XFF242424),
      selectedIconTheme: IconThemeData(size: 30, color: Color(0XFF242424)),
      unselectedItemColor: Color(0XFFF8F8F8),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      displaySmall: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: primaryColor,
    ),
  );
  static ThemeData darkThemeData = ThemeData(
    primaryColor: primaryColor,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 30,
          color: Colors.black,
          fontWeight: FontWeight.bold,

        )),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      selectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 18,
        fontWeight: FontWeight.bold,


        color: Colors.black,
      ),

      backgroundColor: Color(0XFF141A2E),
      selectedItemColor: Color(0XFFFACC1D),
      selectedIconTheme: IconThemeData(size: 30, color: Color(0XFFFACC1D) ),
      unselectedItemColor: Color(0XFFF8F8F8),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      displaySmall: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: primaryColor,
    ),
  );
}
