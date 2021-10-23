import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);
  int _rastgeleSayi = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print("on will pop çalıştı");
        _rastgeleSayi = Random().nextInt(100);
        Navigator.pop(context, _rastgeleSayi);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          title: Text("Red Page AppBar"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Red Page",
                style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                onPressed: () {
                  _rastgeleSayi = Random().nextInt(100);
                  print("Üretilen sayı $_rastgeleSayi");
                  Navigator.of(context).pop(_rastgeleSayi);
                },
                child: Text("Ana Sayfa"),
              ),
              ElevatedButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    print("Evet pop olabilir");
                  } else {
                    print("Hayır olamaz");
                  }
                },
                child: Text('Can Pop Kullanımı'),
                style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
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
            ],
          ),
        ),
      ),
    );
  }
}
