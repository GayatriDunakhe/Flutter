import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
