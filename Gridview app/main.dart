import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gridview App',
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

  List colrlist = [
    Colors.purple,
    Colors.purpleAccent,
    Colors.pink,
    Colors.pinkAccent,
    Colors.deepOrange,
    Colors.deepOrangeAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 22,
            crossAxisSpacing: 22,
          ),
          itemBuilder: (BuildContext c, int index){
            return Container(
              decoration: BoxDecoration(
                color: colrlist[index],
//                color: Colors.white,
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
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: [
//                  IconButton(onPressed: (){}, icon: const Icon(Icons.add, color: Colors.black, size: 22,)),
//                  const Text("Click here to add image",
//                  style: TextStyle(
//                    fontSize:18.0,
//                    fontWeight: FontWeight.normal,
//                    color: Colors.black26,
//                  )
//                  ),
//                ],
//              ),
            );
          },
        itemCount: colrlist.length,
      ),
    );
  }
}
