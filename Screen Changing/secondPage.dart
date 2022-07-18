import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget{
  final num1;
  final num2;

  const SecondPage({Key? key,
  required this.num1,
  required this.num2,
  }) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();

}

class _SecondPageState extends State<SecondPage>{
  @override

  var n1;
  var n2;

  @override
  void initState() {
    n1 = widget.num1;
    n2 = widget.num2;
    super.initState();
  }

  Widget build(BuildContext context) {
      return Scaffold(
          body: Center(
            child: Text("Addition : ${n1 + n2}",
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
              ),
          ),
      );
  }

}