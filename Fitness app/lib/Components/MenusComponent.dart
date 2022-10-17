import 'package:flutter/material.dart';
import '../Functions/CustomTextStyle.dart';

MenusComponent(){
  return Container(
    padding: EdgeInsets.all(20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (Rect bounds) => RadialGradient(
                    center: Alignment.center,
//                                      radius: 0.5,
                    stops: [.5, 1],
                    colors: [
                      Colors.pink,
                      Colors.deepOrange,
                    ],
                    tileMode: TileMode.mirror,
                  ).createShader(bounds),
                  child: Icon(Icons.access_time,),
                ),
//                                Icon(Icons.access_time,),
                SizedBox(width: 20,),
                Text("Ever afternoon", style: cstmTextStyle(fs: 18, fc: Colors.black54, fw: FontWeight.bold),)
              ],
            ),
            IconButton(
              onPressed: (){print("heke");},
              icon: Icon(Icons.keyboard_arrow_right,),
              splashRadius: 20,
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (Rect bounds) => RadialGradient(
                    center: Alignment.center,
//                                      radius: 0.5,
                    stops: [.5, 1],
                    colors: [
                      Colors.pink,
                      Colors.deepOrange,
                    ],
                    tileMode: TileMode.mirror,
                  ).createShader(bounds),
                  child: Icon(Icons.notifications_none,),
                ),
//                                Icon(Icons.notifications_none,),
                SizedBox(width: 20,),
                Text("Add reminder", style: cstmTextStyle(fs: 18, fc: Colors.black54, fw: FontWeight.bold),),
              ],
            ),
            IconButton(
              onPressed: (){print("gi");},
              icon: Icon(Icons.keyboard_arrow_right,),
              splashRadius: 20,
            ),
          ],
        ),
      ],
    ),
  );
}