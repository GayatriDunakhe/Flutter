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


cstmLoadingDialog({required context, required desc}){
  showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            cstmLoadingDialog(context: context, desc: desc),
          ],
        );
      },
  );
}
