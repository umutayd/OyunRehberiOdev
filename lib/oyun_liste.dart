import 'package:flutter/material.dart';
import 'package:flutter_oyun_rehberi/Modeller/oyun.dart';
import 'package:flutter_oyun_rehberi/YardimciSinif/strings.dart';

import 'YardimciSinif/Hakkinda.dart';

class OyunListesi extends StatelessWidget {
  static List<Oyun> tumOyunlar;
  @override
  Widget build(BuildContext context) {
    tumOyunlar = veriKaynagiHazirla();
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Hakkında"),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => hakkinda()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Oyun Rehberi",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: listeyiHazirla(),
    );
  }

  List<Oyun> veriKaynagiHazirla() {
    List<Oyun> oyunlar = [];
    for (int i = 0; i < 10; i++) {
      String kucukResim =
          Strings.OYUN_ADLARI[i].toLowerCase() + "_kucuk" + "${i + 1}.png";
      String buyukResim = Strings.OYUN_ADLARI[i].toLowerCase() + "${i + 1}.png";

      Oyun eklenecekOyun = Oyun(Strings.OYUN_ADLARI[i],
          Strings.OYUN_HAKKINDA[i], Strings.OYNANIS[i], kucukResim, buyukResim);
      oyunlar.add(eklenecekOyun);
    }
    return oyunlar;
  }

  Widget listeyiHazirla() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TekSatirOyun(context, index);
      },
      itemCount: tumOyunlar.length,
    );
  }

  Widget TekSatirOyun(BuildContext context, int index) {
    Oyun listeyeEklenenOyun = tumOyunlar[index];
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListTile(
          onTap: () => Navigator.pushNamed(context, "/oyunIcerıgı/$index"),
          leading: Image.asset(
            "images/" + listeyeEklenenOyun.oyunKucukResmi,
            width: 64,
            height: 64,
          ),
          title: Text(
            listeyeEklenenOyun.oyunAdi,
            style: TextStyle(fontSize: 30, color: Colors.indigo),
          ),
          trailing: Icon(
            Icons.arrow_forward_outlined,
            color: Colors.indigo.shade300,
          ),
        ),
      ),
    );
  }
}
