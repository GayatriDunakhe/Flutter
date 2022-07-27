import 'package:flutter/material.dart';

void main(){
  runApp(
     contact_app()
  );
}

class contact_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contact"),
          backgroundColor: Colors.teal,
        ),
        backgroundColor: Colors.cyanAccent,
//        body: ,
      ),
    );
  }
}
