import 'package:flutter/material.dart';

import '../Functions/CustomTextStyle.dart';

class ExerciseComponent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ExerciseComponentState();
}

class _ExerciseComponentState extends State<ExerciseComponent>{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: MediaQuery.of(context).size.width,
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
            ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Exercise", style: cstmTextStyle(fs:20, fw:FontWeight.bold, fc: Color(0xff0E0E0E)),),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(Icons.circle, size:10, color: Color(0xffFD0299),),
                    const SizedBox(width: 10,),
                    Text("New",style: cstmTextStyle(fs:14 , fw:FontWeight.normal, fc: Color(0xff0E0E0E)),)
                  ],
                )
              ],
            ),
            Text("0/10",style: cstmTextStyle(fs:20, fw:FontWeight.bold, fc: Color(0xffFD0299)),),
          ],
        ),
      ),
    );
  }

}