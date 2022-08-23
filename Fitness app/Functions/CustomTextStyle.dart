import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

cstmTextStyle({fs, fc, fw}){
  return GoogleFonts.getFont(
    "Inter",
    fontSize: fs == null ? 12.0 : fs.toDouble(),
    fontWeight: fw ?? FontWeight.bold,
    color: fc ?? Colors.black54,
  );

}