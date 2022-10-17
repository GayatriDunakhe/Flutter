import 'package:flutter/material.dart';
import 'Components/Background.dart';
import 'Components/DailyStreakComponent.dart';
import 'Components/DaysComponent.dart';
import 'Components/Header.dart';
import 'Components/MenusComponent.dart';

class AddExercisePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _AddExercisePageState();
}

class _AddExercisePageState extends State<AddExercisePage> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

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
              child: Stack(
                children: [

                  ExercisePageBg(),

                  Column(
                    children: [

                      ExerciseHeader(context),

                      MenusComponent(),

                      CalenderComponent(),

                      DailyStreakComponent(width),
                      ]
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
