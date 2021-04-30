import 'package:flutter/material.dart';
import 'package:flutter_oyun_rehberi/Oyun_icerigi.dart';
import 'package:flutter_oyun_rehberi/oyun_liste.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      title: "Oyun Rehberi",
      debugShowCheckedModeBanner: false,
      initialRoute: "/oyunListesi",
      routes: {
        "/": (context) => OyunListesi(),
        "/oyunListesi": (context) => OyunListesi(),
      },
      onGenerateRoute: (RouteSettings settings) {
        List<String> pathElemanlari = settings.name.split("/");
        if (pathElemanlari[1] == "oyunIcerıgı") {
          return MaterialPageRoute(
              builder: (context) => OyunIcerigi(int.parse(pathElemanlari[2])));
        }
        return null;
      },
    );
  }
}
