import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigations/blue_page.dart';
import 'package:flutter_navigations/green_page.dart';
import 'package:flutter_navigations/main.dart';
import 'package:flutter_navigations/ogrenci_detay.dart';
import 'package:flutter_navigations/ogrenci_listesi.dart';
import 'package:flutter_navigations/orange_page.dart';
import 'package:flutter_navigations/purple_page.dart';
import 'package:flutter_navigations/red_page.dart';

class RouteGenerator {
  static Route<dynamic>? _routeOlustur(Widget gidilecekWidget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        builder: (context) => gidilecekWidget,
        settings: settings,
      );
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
        builder: (context) => gidilecekWidget,
        settings: settings,
      );
    } else {
      return CupertinoPageRoute(
        builder: (context) => gidilecekWidget,
        settings: settings,
      );
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _routeOlustur(AnaSayfa(), settings);
      case '/orangePage':
        return _routeOlustur(OrangePage(), settings);
      case '/bluePage':
        return _routeOlustur(BluePage(), settings);
      case '/ogrenciListesi':
        // print(settings.name);
        // print(settings.arguments);
        return _routeOlustur(OgrenciListesi(), settings);
      case '/ogrenciDetay':
        var parametredekiOgrenci = settings.arguments as Ogrenci;
        return _routeOlustur(
          OgrenciDetay(secilenOgrenci: parametredekiOgrenci),
          settings,
        );
      case '/purplePage':
        return _routeOlustur(PurplePage(), settings);
      case '/redPage':
        return _routeOlustur(RedPage(), settings);
      case '/greenPage':
        return _routeOlustur(GreenPage(), settings);
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(title: Text('404')),
            body: Center(child: Text('Sayfa Bulunamadı')),
          ),
        );
    }
  }
}
