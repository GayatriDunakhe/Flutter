import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'Functions/CustomTextStyle.dart';

class AddExercisePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _AddExercisePageState();
}

class _AddExercisePageState extends State<AddExercisePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20.0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(1.0, -2.0),
//                end: Alignment(-1.0, -2.0),
                colors: [
                  Color(0xFFFFA6DB).withOpacity(0.70),
                  Color(0xFFFF46B5).withOpacity(0.70),
                  Colors.white
                ],
              )
          ),
          child: Center(
            child: Container(
              child: Column(
                children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: (){
                            Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                        splashRadius: 20,
                      ),
                      Expanded(
                          child: Text(
                            "Exercise",
                            textAlign: TextAlign.center,
                            style: cstmTextStyle(fs:24,fc: Colors.white),

                          )),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.more_horiz),
                        splashRadius: 20,
                      ),

                    ],
                  ),

                  Container(
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
                  ),

                  Container(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        children: [
                          TableCalendar(
                            calendarStyle: CalendarStyle(
                              defaultTextStyle: cstmTextStyle(fs:18,fc: Colors.black54),
                              weekendTextStyle: cstmTextStyle(fs:18,fc: Colors.black54),
                              todayTextStyle: cstmTextStyle(fs:18,fc: Colors.white,),
                              todayDecoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFE0098),
                                    Color(0xffFF8A00),
                                  ],
                                ),
                                shape: BoxShape.circle,),
                            ),
                            headerVisible: false,
                            focusedDay: DateTime.now(),
                            firstDay: DateTime.utc(DateTime.monthsPerYear,),
                            lastDay: DateTime.utc(2900, 8, 31),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
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
                          ],
                      ),
                      child: Column(
                        children: [
                          Text("12days", style: cstmTextStyle(fs:22,fc: Color(0xffFE0098))),
                          Text("Your current streak", style: cstmTextStyle(fs:16,fc: Colors.black54),),
                        ],
                      ),
                    ),
                  ),

//                  Container(
//                    height: 200,
//                    width: 200,
//                    decoration:BoxDecoration(
//                      shape: BoxShape.circle,
//                      gradient: LinearGradient(
//                        colors: [
//                          Color(0xffCB00FE),
//                          Color(0xffFE0098),
//                          Color(0xffFF8A00),
//                        ],
//                      ),
//                    ),
//                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
