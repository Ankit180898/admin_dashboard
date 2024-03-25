import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color bgColor = Color(0xff212124);

const Color buttonColor = Color(0xfffded73);

const Color iconColor = Color(0xFFA8A8A8);
const Color textColor = Color(0xffffffff);

//30
TextStyle salutationTextStyle(double size) => GoogleFonts.poppins(
      textStyle: TextStyle(
        color: iconColor,
        fontSize: size,
        fontWeight: FontWeight.w600,
      ),
    );
//72
TextStyle titleText(double size) => GoogleFonts.epilogue(
      textStyle: TextStyle(
        color: textColor,
        height: 1.2,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
//20
TextStyle normalText(double size) => GoogleFonts.poppins(
      textStyle: TextStyle(
          color: iconColor, fontSize: size, fontWeight: FontWeight.normal),
    );
