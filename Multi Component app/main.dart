import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                margin: EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.deepPurple),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 90,
                    width: 200,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: Colors.purpleAccent),
                  ),
                  Container(
                    height: 90,
                    width: 200,
                    color: Colors.purpleAccent,
                  ),
                ],
              ),

              Container(
                height: 20,
                margin: const EdgeInsets.only(top: 20),
                child: const Text("Stack Container"),
              ),

              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 90,
                    width: 500,
                    color: Colors.purple,
                    margin: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.purpleAccent,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.purpleAccent),
                        ),
                        Container(
                          height: 70,
                          width: 50,
                          color: Colors.purpleAccent,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Container(
                height: 20,
                child: const Text("Container"),
              ),

              Container(
                height: 90,
                width: 500,
                color: Colors.pink,
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.pinkAccent,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.pinkAccent),
                    ),
                    Container(
                      height: 70,
                      width: 50,
                      color: Colors.pinkAccent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            print("Hello Stack, Row, Column");
          },
          label: Text("CLICK ME"),
          backgroundColor: Colors.deepPurple,
      ),
    );
  }

}
