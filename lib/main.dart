import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigations/blue_page.dart';
import 'package:flutter_navigations/green_page.dart';
import 'package:flutter_navigations/orange_page.dart';
import 'package:flutter_navigations/red_page.dart';
import 'package:flutter_navigations/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: AnaSayfa(),
      /*routes: {
        '/': (context) => AnaSayfa(),
        'redPage': (context) => RedPage(),
        '/orangePage': (context) => OrangePage(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('Error'),
          ),
          body: Center(
            child: Text('404'),
          ),
        ),
      ),*/

      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Home Page",
              style: TextStyle(fontSize: 28),
            ),
            Divider(
              color: Colors.black,
              height: 20,
              endIndent: 30,
              indent: 30,
              thickness: 2,
            ),
            ElevatedButton(
              onPressed: () async {
                int? _gelenSayi = await Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (redContext) => RedPage()),
                );
                print("Gelen Sayı : $_gelenSayi");
              },
              child: Text('Kırmızı Sayfaya Gir IOS'),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(context, route);
                Navigator.of(context)
                    .push<int>(MaterialPageRoute(builder: (redContext) => RedPage()))
                    .then((int? value) {
                  debugPrint("Gelen Sayı : $value");
                });
              },
              child: Text('Kırmızı Sayfaya Gir Android'),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              child: Text('Maybe Pop Kullanımı'),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
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
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => GreenPage(),
                ));
              },
              child: Text('Push Replacament Kullanımı'),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/orangePage');
              },
              child: Text('PushNamed Kullanımı'),
              style: ElevatedButton.styleFrom(primary: Colors.orange),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bluePage');
              },
              child: Text('PushNamed Kullanımı'),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/ogrenciListesi', arguments: 60);
              },
              child: Text('Liste Oluştur'),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/purplePage');
              },
              child: Text('Mor Sayfaya Git'),
              style: ElevatedButton.styleFrom(primary: Colors.purple),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/greenPage');
              },
              child: Text('Yeşil Sayfaya Git'),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
