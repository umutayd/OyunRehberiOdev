import 'package:flutter/material.dart';
import 'package:flutter_oyun_rehberi/Modeller/oyun.dart';
import 'package:flutter_oyun_rehberi/oyun_liste.dart';

class OyunIcerigi extends StatelessWidget {
  int gelenIndex;
  Oyun secilenOyun;
  OyunIcerigi(this.gelenIndex);
  @override
  Widget build(BuildContext context) {
    secilenOyun = OyunListesi.tumOyunlar[gelenIndex];

    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: Colors.indigo,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Image.asset(
                "images/" + secilenOyun.oyunBuyukResmi,
                fit: BoxFit.cover,
              ),
              title: Text(
                secilenOyun.oyunAdi + " Oyununu tanıyalım",
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  secilenOyun.oyunHakkinda + secilenOyun.oyunanis,
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
