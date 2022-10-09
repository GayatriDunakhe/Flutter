import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../Functions/CustomTextStyle.dart';

class HabbitsComponent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HabbitsComponent();

}

class _HabbitsComponent extends State<HabbitsComponent>{

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

  int currentIndex = 0;
  int colorHex = 0xff0E0E0E;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: CarouselSlider(
            options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                    print(currentIndex);
                  });
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
        ),

        Container(
          height: 9,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child:Center(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: times.length,
              itemBuilder: (BuildContext context, int index){
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 5,),
                    Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex  == index ? Color(0xffFD0299) : Colors.black12,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
