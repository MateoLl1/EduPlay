
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const List<Color> colorsList= [
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.amberAccent,
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
    colorSchemeSeed: colorsList[selectColor],
    
    brightness: isDark ? Brightness.dark : Brightness.light,
    textTheme: TextTheme(
      //TITULOS
      titleLarge: GoogleFonts.chakraPetch().copyWith(fontSize: 30),
      // SUBTITULOS
      titleMedium: GoogleFonts.chakraPetch().copyWith(fontSize: 20),
      //PARRAFOS
      bodyMedium: GoogleFonts.chakraPetch(),
      //Validacion
      bodySmall: GoogleFonts.chakraPetch().copyWith(),

      // PROXIMAMENTE
      labelMedium: GoogleFonts.chakraPetch().copyWith(
        backgroundColor: Colors.black45,
        fontSize: 30
      ),
      //BOTONES
      labelLarge: GoogleFonts.chakraPetch(
        color: isDark ? Colors.black : Colors.white,
        fontWeight: FontWeight.w500
      )


    )
  );


}