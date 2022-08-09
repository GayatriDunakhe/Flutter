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
        backgroundColor: Colors.white,
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
            Center(child:Image.asset("images/contact.jpg", height: 250,),),

            SizedBox(height: 20,),

            Text("Have any issue Feel free to Contact Us"),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 10,
                        )
                      ]
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 10,
                        )
                      ]
                  ),
                ),
              ],
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 10,
                        )
                      ]
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 10,
                        )
                      ]
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
