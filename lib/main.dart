import 'package:flutter/material.dart';
import 'package:myproject/screen/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Foze My App"),
          backgroundColor: const Color.fromARGB(255, 0, 140, 255),
          centerTitle: true,
        ),
        body: const Item(),backgroundColor: Colors.black,
      ),
    );
  }
}
