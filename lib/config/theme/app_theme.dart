
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const List<Color> colors= [
  Colors.blue,
  Colors.green,
  Colors.red,
];

class AppTheme {

  final int selectColor;
  final bool isDark;

  AppTheme({
    required this.selectColor, 
    required this.isDark
  });

  ThemeData getTheme () => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colors[selectColor],
    brightness: isDark ? Brightness.dark : Brightness.light,
    textTheme: TextTheme(
      //TITULOS
      titleLarge: GoogleFonts.chakraPetch().copyWith(fontSize: 30),
      // SUBTITULOS
      titleMedium: GoogleFonts.chakraPetch().copyWith(fontSize: 20),
      //PARRAFOS
      bodyMedium: GoogleFonts.chakraPetch(),
      //BOTONES
      labelLarge: GoogleFonts.chakraPetch(
        color: isDark ? Colors.black : Colors.white,
        fontWeight: FontWeight.w500
      )
    )
  );


}