import 'dart:ui';

import 'package:flutter/material.dart';

cstmTextStyle({fs, fw, fc}){
  return TextStyle(
    fontSize: fs == null ? 20.0 : fs.toDouble(),
    color: fc ?? Colors.white,
    fontWeight: fw ?? FontWeight.bold,
    fontFamily: "Inter",
  );
}