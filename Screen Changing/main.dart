import 'package:flutter/material.dart';
import 'package:screen_changing/secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Screen changing',
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children:[
               Expanded(
                  child: TextField(
                    decoration: const InputDecoration(border:  OutlineInputBorder(),),
                    //inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                    controller: num1,
                  )),
              const SizedBox(width: 10),
              Expanded(
                  child: TextField(
                    decoration: const InputDecoration(border:  OutlineInputBorder(),),
                    keyboardType: TextInputType.number,
                    controller: num2,
                  )),
              const SizedBox(width: 10),
              FloatingActionButton(
                isExtended: true,
                onPressed: (){

                  if(num1.text.isEmpty && num2.text.isEmpty) return;

                  int n1 = int.parse(num1.text);
                  int n2 = int.parse(num2.text);
                  //print(n1.runtimeType);

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:(BuildContext c) =>  SecondPage(
                      num1: n1,
                      num2: n2,
                    )));

                  num1.text = "";
                  num2.text = "";
              },
                child: const Icon(Icons.arrow_right),
              ),
            ],
          ),
        ),
    );
  }
}
