import 'package:flutter/material.dart';
import '../Functions/CustomTextStyle.dart';

HabbitsComponent(){

  List times = [
    "Morning",
    "Afternoon",
    "Eveining",
    "Night",
  ];

  bool isTime = false;

  return Container(
    color: Colors.white,
    child: Column(
      children: [
        Container(
          height: 90,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: times.length,
            itemBuilder: (BuildContext context, int index){
              return Center(
                child: Container(
                  padding: const EdgeInsets.only(left:50, right: 50),
                  child: Column(
                    children: [
                      Text(times[index], style: cstmTextStyle(fs:20, fw:FontWeight.bold, fc: Colors.black54),),
                      const SizedBox(height: 10,),
                      Text("1 habbit", style: cstmTextStyle(fs:14, fc: Colors.black45),),
                      const SizedBox(height: 35,),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Container(
          height: 15,
          child:ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: times.length,
            itemBuilder: (BuildContext context, int index){
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 10,),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffD9D9D9),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    ),
  );
}