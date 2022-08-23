import 'package:flutter/material.dart';
import '../Functions/CustomTextStyle.dart';

DaysComponent(){

  DateTime date = new DateTime.now();
  print(date);

  return Container(
    color: Colors.white,
    height: 100,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (BuildContext c, int i){
          return Container(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text("Mon", style: cstmTextStyle(fs: 16, fw: FontWeight.normal)),
                Text("23", style: cstmTextStyle(fs:16,)),
              ],
            ),
          );
        }),
  );
}


