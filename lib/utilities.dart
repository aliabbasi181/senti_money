import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Utilities {
  static Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static TextStyle fontStyle(double size, FontWeight weight, Color color) {
    return GoogleFonts.mulish(fontSize: size, fontWeight: weight, color: color);
  }
}
