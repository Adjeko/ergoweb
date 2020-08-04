import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Texts {
  static final header = bahnHeader;
  static final subheader = bahnSubheader;
  static final text = latoText;
  static final buttonText = latoButtonText;

  static final latoHeader = (String text, Color color) => AutoSizeText(
        text,
        style: GoogleFonts.getFont(
          'Lato',
          textStyle: TextStyle(
            color: color,
            fontSize: 54,
            fontWeight: FontWeight.w700,
          ),
        ),
        maxLines: 1,
      );

  static final latoSubheader = (String text, Color color) => AutoSizeText(
        text,
        style: GoogleFonts.getFont(
          'Lato',
          textStyle: TextStyle(
            color: color,
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        maxLines: 2,
      );

  static final latoText = (String text, Color color) => AutoSizeText(
        text,
        style: GoogleFonts.getFont(
          'Lato',
          textStyle: TextStyle(
            color: color,
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
      );

  static final latoButtonText = (String text, Color color) => AutoSizeText(
        text,
        style: GoogleFonts.getFont(
          'Lato',
          textStyle: TextStyle(
            color: color,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      );

  static final bahnHeader = (String text, Color color) => Text(
        text,
        style: TextStyle(
          color: color,
          fontFamily: 'Bahnschrift',
          fontSize: 54,
          fontWeight: FontWeight.w700,
        ),
      );

  static final bahnSubheader = (String text, Color color) => Text(
        text,
        style: TextStyle(
          color: color,
          fontFamily: 'Bahnschrift',
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      );

  static final bahnText = (String text, Color color) => Text(
        text,
        style: TextStyle(
          color: color,
          fontFamily: 'Bahnschrift',
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
      );
}
