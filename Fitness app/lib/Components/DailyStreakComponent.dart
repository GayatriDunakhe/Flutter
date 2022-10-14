import 'package:flutter/material.dart';
import '../Functions/CustomTextStyle.dart';

DailyStreakComponent(context){
  return  Container(
    height: 110,
    width: context,
    padding: EdgeInsets.all(20.0),
    color: Colors.white,
    child: Container(
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 0),
            blurRadius: 50,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        children: [
          Text("12days", style: cstmTextStyle(fs:22,fc: Color(0xffFE0098))),
          Text("Your current streak", style: cstmTextStyle(fs:16,fc: Colors.black54),),
        ],
      ),
    ),
  );
}