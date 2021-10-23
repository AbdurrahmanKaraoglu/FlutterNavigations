import 'package:flutter/material.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orange Page AppBar"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text(
          "Orange Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
