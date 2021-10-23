import 'package:flutter/material.dart';

class OgrenciListesi extends StatelessWidget {
  const OgrenciListesi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int elemanSayisi = ModalRoute.of(context)!.settings.arguments as int;
    // print("Eleman Sayısı Alındı : $elemanSayisi");
    List<Ogrenci> tumOgrenciler =
        List.generate(elemanSayisi, (index) => Ogrenci(index + 1, "Isim : ${index + 1}", "Soyisim : ${index + 1}"));
    return Scaffold(
      appBar: AppBar(title: Text('Öğrenci Listesi')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(
                tumOgrenciler[index].id.toString(),
              ),
            ),
            title: Text(tumOgrenciler[index].isim.toString()),
            subtitle: Text(tumOgrenciler[index].soyisim.toString()),
          );
        },
        itemCount: elemanSayisi,
      ),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}
