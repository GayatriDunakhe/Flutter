import 'dart:html';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      title: 'XO Game',
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

  List xoimg = [
    "https://www.freeiconspng.com/thumbs/grid-png/white-grid-png-8.png", //blank
    "https://cdn3.iconfinder.com/data/icons/feather-5/24/x-256.png", //x
    "https://cdn3.iconfinder.com/data/icons/font-awesome-solid/512/o-512.png", //o
    "https://condaluna.com/assets/stickers/confetti-drop.gif" //gif
  ];

  String msg = "Start Game";

  List<int> card_list = [];

  bool x_first = true;
  bool isgameComplete = false;

  @override
  void initState() {
    resetall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
          children: [
            GridView.builder(
              padding: const EdgeInsets.all(22),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 22,
                crossAxisSpacing: 22,
              ),
              itemBuilder: (BuildContext c, int index){
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                    image: DecorationImage(image: NetworkImage(getimg(card_list[index]))),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: isgameComplete ? null : (){
                        setState(() {
                          if(card_list[index] == 0){
                            var n = x_first ? 1 : 2;
                            card_list[index] = n;
                            x_first = !x_first;}
                         });
                        checkwinner(!x_first);
                      },
                    ),
                  ),
                );
              },
              itemCount: 9,
            ),
            Text(msg,
              style: GoogleFonts.getFont(
                "Pacifico",
                fontSize: 20,
              ),
            ),
          ],
        ),
        Center(
          child: isgameComplete ? Image.network(xoimg[3]) : null,
        )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          resetall();
        },
        child: const Icon(Icons.restore),
      ),
    );
  }

  String getimg(int cardList) {
    var img = "";

    switch(cardList){
      case 0:
        img = xoimg[0];
        break;
      case 1:
        img = xoimg[1];
        break;
      case 2:
        img = xoimg[2];
    }
    return img;
  }

  checkwinner(bool x_first){
     var n = x_first ? 1 : 2;

     // row wise
     if(card_list[0] == n && card_list[1] == n && card_list[2] == n){
       setState(() {
         msg = x_first ? "X is Winner" : "O is Winner";
         isgameComplete = true;
       });
     }
     else if(card_list[3] == n && card_list[4] == n && card_list[5] == n){
       setState(() {
         msg = x_first ? "X is Winner" : "O is Winner";
         isgameComplete = true;
       });
     }
     else if(card_list[6] == n && card_list[7] == n && card_list[8] == n){
       setState(() {
         msg = x_first ? "X is Winner" : "O is Winner";
         isgameComplete = true;
       });
     }

     // column wise
     else if(card_list[0] == n && card_list[3] == n && card_list[6] == n){
       setState(() {
         msg = x_first ? "X is Winner" : "O is Winner";
         isgameComplete = true;
       });
     }
     else if(card_list[1] == n && card_list[4] == n && card_list[7] == n){
       setState(() {
         msg = x_first ? "X is Winner" : "O is Winner";
         isgameComplete = true;
       });
     }
     else if(card_list[2] == n && card_list[5] == n && card_list[8] == n){
       setState(() {
         msg = x_first ? "X is Winner" : "O is Winner";
         isgameComplete = true;
       });
     }

     // diagonal wise
     else if(card_list[0] == n && card_list[4] == n && card_list[8] == n){
       setState(() {
         msg = x_first ? "X is Winner" : "O is Winner";
         isgameComplete = true;
       });
     }
     else if(card_list[2] == n && card_list[4] == n && card_list[6] == n){
       setState(() {
         msg = x_first ? "X is Winner" : "O is Winner";
         isgameComplete = true;
       });
     }

     // Tie
    else if(!card_list.contains(0)){
       setState(()=> msg = "Tie");
     }
  }

  resetall(){
    setState(() {
      card_list = [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
      ];
      x_first = true;
      msg = "Start Game";
      isgameComplete = false;
    });
  }
}
