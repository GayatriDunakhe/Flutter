import 'package:flutter/material.dart';

import 'Components/Background.dart';
import 'Components/DaysComponent.dart';
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

    List times = [
      "Morning",
      "Afternoon",
      "Eveining",
      "Night",
    ];

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

                  Container(
                    height: 200,
//                    width: screenWidth,
                    color: Colors.white,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: times.length,
                      itemBuilder: (BuildContext context, int index){
                        return Center(
                          child: Container(
                            padding: EdgeInsets.only(left:50, right: 50),
                            child: Column(
                              children: [
                                Text(times[index], style: cstmTextStyle(fs:20, fw:FontWeight.bold, fc: Colors.black54),),
                                SizedBox(height: 10,),
                                Text("1 habbit", style: cstmTextStyle(fs:14, fc: Colors.black45),),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink,
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

//Row(
//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//children: [
//Column(
//children: [
//Text("Morning"),
//Text("1 habbit"),
//],
//),
//Column(
//children: [
//Text("Afternoon"),
//Text("1 habbit"),
//],
//),
//Column(
//children: [
//Text("Evening"),
//Text("1 habbit"),
//],
//),
//],
//),
