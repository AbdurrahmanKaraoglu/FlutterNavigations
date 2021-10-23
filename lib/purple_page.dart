import 'package:flutter/material.dart';

class PurplePage extends StatelessWidget {
  const PurplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Purple Page AppBar"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Purple Page",
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/orangePage');
              },
              child: Text('Go to Orange'),
              style: ElevatedButton.styleFrom(primary: Colors.orange.shade600),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bluePage');
              },
              child: Text('Go to Blue'),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/redPage');
              },
              child: Text('Go to Red'),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text('Go to Home'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent.shade200,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.settings.name == '/');
              },
              child: Text('Go to Home 2'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent.shade200,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil('/greenPage', (route) => route.isFirst);
              },
              child: Text('Go to Green Page'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
