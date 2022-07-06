import 'dart:math';

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

  List<Color> colr = [
    Colors.pinkAccent,
    Colors.purpleAccent,
    Colors.deepOrangeAccent,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightGreenAccent,
  ];

  List imgs = [
    "https://t4.ftcdn.net/jpg/03/33/41/89/360_F_333418925_AtrHerMSJwegTpsFZ7QmeB2gcOGLm5Km.jpg",
    "https://t4.ftcdn.net/jpg/00/95/92/61/360_F_95926136_6xppiylcis3Mqzov3R8iSl61cLSs5xb1.jpg",
    "https://t3.ftcdn.net/jpg/03/01/51/92/360_F_301519238_cHyrZ5cJTeekuVU6JsxSMlTf45SPbOk3.jpg",

  ];

  int colrindx = 0;
  int imgindx = 0;

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
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepPurple,
                ),
                child: ClipRRect(
                  child: Image.network(imgs[imgindx],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 90,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: colr[colrindx],
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 0),
                            color: Color(0x55000000),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ),
                        ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 200,
                    decoration: BoxDecoration(
                      color: colr[colrindx],
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(3, 4),
                          color: Color(0x55000000),
                          blurRadius: 1.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                    ),
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
                    decoration: BoxDecoration(
                      border: Border.all(width: 4.0, color: colr[colrindx],),
                      color: Colors.purple,
                    ),
                    margin: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          color: colr[colrindx],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: colr[colrindx]),
                        ),
                        Container(
                          height: 70,
                          width: 50,
                          color: colr[colrindx],
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
                decoration: BoxDecoration(
                  border: Border.all(width: 4.0, color: colr[colrindx],),
                  color: Colors.pink,
                ),
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: colr[colrindx],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: colr[colrindx]),
                    ),
                    Container(
                      height: 70,
                      width: 50,
                      color: colr[colrindx],
                    ),
                  ],
                ),
              ),
              FloatingActionButton.extended(onPressed: (){
                setState(() {
                  Random random_num = new Random();
                  var colrnum = random_num.nextInt(6);
                  print(colrnum);
                  var imgnum = random_num.nextInt(3);
                  print(imgnum);
                  colrindx = colrnum;
                  imgindx = imgnum;
                });
                },
                label: Text("click me"),),
            ],
          ),
        ),
      ),
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//      floatingActionButton: FloatingActionButton.extended(
//          onPressed: (){
//            print("Hello Stack, Row, Column");
//          },
//          label: Text("CLICK ME"),
//          backgroundColor: Colors.deepPurple,
//      ),
    );
  }

}
