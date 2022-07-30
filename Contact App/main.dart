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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contact", style: TextStyle(
            color: Colors.orangeAccent,
          ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Image.asset("images/contact.jpg"),
          ],
        ),
      ),
    );
  }
}
