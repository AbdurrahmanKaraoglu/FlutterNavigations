import 'package:flutter/material.dart';
import 'package:flutter_navigations/ogrenci_listesi.dart';

class OgrenciDetay extends StatelessWidget {
  final Ogrenci secilenOgrenci;
  const OgrenciDetay({required this.secilenOgrenci, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var secilen = ModalRoute.of(context)!.settings.arguments as Ogrenci;
    // print("Seçilen Öğrenci : ${secilen.isim}");
    return Scaffold(
      appBar: AppBar(
        title: Text("Öğrenci Detay"),
      ),
      body: ListView(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: BorderSide(
                color: Colors.black12,
                width: 3,
              ),
            ),
            elevation: 50,
            shadowColor: Colors.red,
            color: Colors.blueAccent.shade400,
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    secilenOgrenci.id.toString(),
                    style: TextStyle(fontSize: 45),
                  ),
                  title: Text(
                    secilenOgrenci.isim.toString(),
                    style: TextStyle(fontSize: 24),
                  ),
                  subtitle: Text(
                    secilenOgrenci.soyisim.toString(),
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
