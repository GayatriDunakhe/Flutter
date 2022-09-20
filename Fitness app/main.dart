import 'package:flutter/material.dart';

import 'Components/Background.dart';
import 'Components/DaysComponent.dart';
import 'Components/ExerciseComponent.dart';
import 'Components/HabbitsComponent.dart';
import 'Components/Header.dart';
import 'Functions/CustomTextStyle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness Application UI',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFFA6DB).withOpacity(0.70),
                  Color(0xFFFF46B5).withOpacity(0.70),
                ],
              )
            ),
            child: Center(
              child:Container(
//                color: Colors.white,
                child: Column(
                  children: [

                    Header(),

                    const SizedBox(
                      height: 20,
                    ),

                    DaysComponent(),

                    const SizedBox(
                      height: 10,
                    ),

                    BackgroundCircles(screenWidth),

                    HabbitsComponent(),

                    ExerciseComponent(),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 25, right: 25),
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: Colors.white,
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
            Icon(Icons.wb_sunny, color: Color(0xffFE0098),),

            Material(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFFE0098).withOpacity(0.70),
                        Color(0xFFFF8A00).withOpacity(0.70),
                      ],
                    )

                ),
                child: IconButton(
                  onPressed: (){
                    print("add");
                  },
                  icon: Icon(Icons.add),
                  color: Colors.white,

                ),
              ),
            ),
            Icon(Icons.pie_chart_outline)
          ],
        ),
      ),
    );
  }
}
