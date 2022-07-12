import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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

  List todoList = [];

  List colorList = [
    Colors.white70,
    Colors.tealAccent,
    Colors.purpleAccent,
    Colors.pinkAccent,
    Colors.deepOrangeAccent,
    Colors.lightGreenAccent,
    Colors.amberAccent,
    Colors.deepPurpleAccent,
    Colors.orangeAccent,
    Colors.white30,
    Colors.greenAccent,
    Colors.indigoAccent,
  ];

  TextEditingController ctr = TextEditingController();

  bool validate = false;

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children:[
                  Container(
                    width: 350,
                    padding: const EdgeInsets.all(20.0),
                    child:  TextField(
                      controller: ctr,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "ToDo's",
                        hintText: "Enter ToDo's",
                        errorText: validate ? "Todo is empty" : null,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: (){
                      setState(() {
                        ctr.text.isEmpty ? validate = true : validate = false;
                        if(validate == false){
                          todoList.add(ctr.text);
                        }
                      });

                    },
                    icon: const Icon(Icons.add_circle), color: Colors.purpleAccent, iconSize: 50,),
                  IconButton(
                    onPressed: (){
                      setState(() {
                        ctr.clear();
                      });
                    },
                    icon: const Icon(Icons.cancel), color: Colors.redAccent, iconSize: 50,),
                ],
              ),
              SizedBox(
                height: 500,
                child: GridView.builder(
                  padding: EdgeInsets.all(20.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing:22,
                    crossAxisSpacing: 22,
                  ),
                  itemBuilder: (BuildContext c, int index){
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: getColor(),
                        border: Border.all(width: 1.0, color: Colors.black26),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 0.4,
                            blurRadius: 0.4,
                            offset: Offset(0,4),
                          ),
                        ],
                      ),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(todoList[index], textAlign: TextAlign.center,
                              style: GoogleFonts.getFont(
                                'Inconsolata',
                                fontSize: 30,
                              ),
                            ),
                            IconButton(onPressed: (){
                              Fluttertoast.showToast(
                                msg: "${todoList[index]} Deleted",
                                timeInSecForIosWeb: 1,
                              );
                              setState(() {
                                todoList.removeAt(index);
                              });

                            }, icon: const Icon(Icons.delete)),
                          ],
                        ),
                    );
                  },
                  itemCount: todoList.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  getColor() {
      int colr = 0;
      Random rnd = new Random();
      colr = rnd.nextInt(12);
      return colorList[colr];
  }
}
