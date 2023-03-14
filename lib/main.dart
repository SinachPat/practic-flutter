import 'package:flutter/material.dart';

void main() {
  runApp(const DogApp());
}

class DogApp extends StatelessWidget {
  const DogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Dog App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dog App"),
        ),
        body: Center(
          child: Text("Click!"),
        ),
      ),
    );
  }
}
