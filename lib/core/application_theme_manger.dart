import 'package:flutter/material.dart';

class ApplicationThemeManger{
  static const Color primaryColor = Color(0xFFB7935F);

  static ThemeData lightThemeData = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontFamily: "el messiri",
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: primaryColor,
      selectedItemColor: Color(0xFF222222),
        selectedIconTheme: IconThemeData(
          size: 35,
          color: Color(0xFF707070),
        ),
      selectedLabelStyle: TextStyle(
        fontFamily: "el messiri",
        fontSize: 16,
      ),
      showUnselectedLabels: false,
      unselectedLabelStyle: TextStyle(
        fontFamily: "el messiri",
        fontSize: 14,
      ),
      unselectedItemColor: Color(0xFFF8F8F8),
       unselectedIconTheme: IconThemeData(
         size: 28,
         color:Color(0xFFF8F8F8),
       ),





    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "el messiri",
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
          fontFamily: "el messiri",
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.w500,
      ),
      bodyMedium:  TextStyle(
          fontFamily: "el messiri",
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.w400,
      ),
      bodySmall:  TextStyle(
          fontFamily: "el messiri",
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w400,
      ),
      displaySmall:  TextStyle(
        fontFamily: "el messiri",
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: primaryColor,
      space: 10,
    )

  );
}