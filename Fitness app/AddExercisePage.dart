import 'package:flutter/material.dart';

import 'Components/Header.dart';
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
                colors: [
                  Color(0xFFFFA6DB).withOpacity(0.70),
                  Color(0xFFFF46B5).withOpacity(0.70),
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
                                Icon(Icons.access_time,),
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
                                Icon(Icons.notifications_none,),
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
                    child: TableCalendar(
                      calendarStyle: CalendarStyle(
                        defaultTextStyle: cstmTextStyle(fs:18,fc: Colors.black54),
                        weekendTextStyle: cstmTextStyle(fs:18,fc: Colors.black54),
                        todayTextStyle: cstmTextStyle(fs:18,fc: Color(0xFFFF46B5).withOpacity(0.70),),
                        todayDecoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,),
                      ),
                      headerVisible: false,
                      focusedDay: DateTime.now(),
                      firstDay: DateTime.utc(DateTime.monthsPerYear,),
                      lastDay: DateTime.utc(2900, 8, 31),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
