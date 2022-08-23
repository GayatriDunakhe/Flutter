import 'package:flutter/material.dart';
import '../Functions/CustomTextStyle.dart';

Header(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
          child: Text(
            "Today",
            textAlign: TextAlign.center,
            style: cstmTextStyle(fs:24,fc: Colors.white),

          )),
      IconButton(
        onPressed: (){},
        icon: Icon(Icons.more_horiz),
        splashRadius: 20,
      ),

    ],
  );
}


