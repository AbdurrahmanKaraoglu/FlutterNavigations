import 'package:flutter/material.dart';

class BluePage extends StatelessWidget {
  const BluePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blue Page AppBar"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          "Blue Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
