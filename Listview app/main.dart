import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Listview app',
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

  List sub_name = [
    "C",
    "C++",
    "Java",
    "Python",
    "Html",
    "Css",
    "JavaScript",
    "Php",
  ];
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
            itemBuilder: (BuildContext c, int  index){
              return Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.only(left: 10.0,),
                width: 395,
                height: 49,
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
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                    Text(
                     "Subject : ${sub_name[index]}",
                     style: const TextStyle(
                       fontSize: 18.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black,
                     ),
                   ),
                   IconButton(
                       onPressed: (){
                         Fluttertoast.showToast(
                           msg: "${sub_name[index]} Subject Deleted",
                           timeInSecForIosWeb: 2,
                         );
                         setState(() {
                           sub_name.removeAt(index);
                         });
                       },
                       icon: const Icon(Icons.delete_outlined, color: Colors.red,))
                 ],
               ),
              );
            },
          itemCount: sub_name.length,
        ),
      ),
    );
  }
}
