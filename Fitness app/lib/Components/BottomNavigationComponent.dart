import 'package:flutter/material.dart';

import '../AddExercisePage.dart';

class BottomNavigationComponent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _BottomNavigationComponentState();
}

class _BottomNavigationComponentState extends State<BottomNavigationComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                      Color(0xFFFE0098),
                      Color(0xFFFF8A00),
                    ],
                  )

              ),
              child: IconButton(
                onPressed: (){
                  print("add");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  AddExercisePage()),
                  );
                },
                icon: Icon(Icons.add),
                color: Colors.white,

              ),
            ),
          ),
          Icon(Icons.pie_chart_outline)
        ],
      ),
    );
  }

}