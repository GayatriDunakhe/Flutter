import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../Functions/CustomTextStyle.dart';

HabbitsComponent(){

  List times = [
    "Morning",
    "Afternoon",
    "Eveining",
    "Night",
    "Early Morning",
    "Mid Afternoon",
    "Mid Eveining",
    "Mid Night",
  ];

  int colorHex = 0;

  return Container(
    color: Colors.white,
    child: CarouselSlider(
      options: CarouselOptions(
          onPageChanged: (index, reason) {
            print(index);
            setState((){
              colorHex = 0xff0E0E0E;
            })
          }
      ),
      items: times.map((e) => Container(
        child: Column(
          children: [
            Text(e.toString(), style: cstmTextStyle(fs:20, fw:FontWeight.bold, fc: Color(colorHex)),),
            const SizedBox(height: 10,),
            Text("1 habbit", style: cstmTextStyle(fs:14, fc: Color(colorHex)),), //fc: Colors.black12
          ],
        ),
      )).toList(),
    ),
  );
}


//
//  bool isTime = false;
//
//  DateTime now = DateTime.now();
//
//  print(now.hour);
//
//  int hour = now.hour;
//
//  if(hour > 1 && hour < 12){
//    print("morning");
//    isTime = true;
//  }
//  else if(hour > 12 && hour < 17){
//    print("afternoon");
//    isTime = true;
//  }
//  else if(hour > 17 && hour < 21){
//    print("evening");
//    isTime = true;
//  }
//  else if(hour > 21 && hour < 24){
//    print("night");
//    isTime = true;
//  }
//  else{
//    print("Wrong time");
//    isTime = false;
//  }

//Column(
//children: [
//Container(
//height: 90,
//child: ListView.builder(
//scrollDirection: Axis.horizontal,
//itemCount: times.length,
//itemBuilder: (BuildContext context, int index){
//return Center(
//child: Container(
//padding: const EdgeInsets.only(left:50, right: 50),
//child: Column(
//children: [
//Text(times[index], style: cstmTextStyle(fs:20, fw:FontWeight.bold, fc: isTime ? Colors.pink : Colors.black12),),
//const SizedBox(height: 10,),
//Text("1 habbit", style: cstmTextStyle(fs:14, fc: isTime ? Colors.pink : Colors.black12),),
//const SizedBox(height: 35,),
//],
//),
//),
//);
//},
//),
//),
//Container(
//height: 15,
//child:ListView.builder(
//shrinkWrap: true,
//scrollDirection: Axis.horizontal,
//itemCount: times.length,
//itemBuilder: (BuildContext context, int index){
//return Row(
//crossAxisAlignment: CrossAxisAlignment.center,
//children: [
//const SizedBox(width: 10,),
//Container(
//height: 10,
//width: 10,
//decoration: BoxDecoration(
//shape: BoxShape.circle,
//color: isTime ? Colors.pink : Colors.black12,
//),
//),
//],
//);
//},
//),
//),
//],
//),
