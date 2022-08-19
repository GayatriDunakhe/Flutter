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
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sider Menu"),
        actions: [
          PopupMenuButton(
              icon: const Icon(Icons.list),
              itemBuilder: (context) {
                return[
                  PopupMenuItem(
                      value: 0,
                      child: Text("Profile")),
                  PopupMenuItem(
                      value: 1,
                      child: Text("Logout")),
                  PopupMenuItem(
                      value: 2,
                      child: Text("classroom")),
                ];
              },
            onSelected: (value) {
                if(value == 0){
                  print(value);
                }
                else if (value == 1){
                  print(value);
                }
                else if (value == 2){
                  print(value);
                }
            },
          )
        ],
      ),
      body: Text("Hello")
    );
  }
}
