import 'package:flutter/material.dart';

import 'Components/DaysComponent.dart';
import 'Components/Header.dart';

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
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
