import 'package:flutter/material.dart';
import 'package:e_ticaret/urunler/urun_cesitleri.dart';

class Kozmetik extends StatefulWidget {
  @override
  _KozmetikState createState() => _KozmetikState();
}

class _KozmetikState extends State<Kozmetik> {
  List<Widget>? gosterilecekListe;

  @override
  void initState() {
    super.initState();
    gosterilecekListe = <Widget>[
      UrunCesitleri(
        resim: "assets/kozmetik/kozmetik.jpg",
        marka: "XXX Marka",
        fiyat: "1.000 TL",
        detay: "Güzel Ürünler",
      ),
      UrunCesitleri(
        resim: "assets/kozmetik/kozmetik.jpg",
        marka: "XXX Marka",
        fiyat: "1.000 TL",
        detay: "Güzel Ürünler",
      ),
      UrunCesitleri(
        resim: "assets/kozmetik/kozmetik.jpg",
        marka: "XXX Marka",
        fiyat: "1.000 TL",
        detay: "Güzel Ürünler",
      ),
      UrunCesitleri(
        resim: "assets/kozmetik/kozmetik.jpg",
        marka: "XXX Marka",
        fiyat: "1.000 TL",
        detay: "Güzel Ürünler",
      ),
      UrunCesitleri(
        resim: "assets/kozmetik/kozmetik.jpg",
        marka: "XXX Marka",
        fiyat: "1.000 TL",
        detay: "Güzel Ürünler",
      ),
      UrunCesitleri(
        resim: "assets/kozmetik/kozmetik.jpg",
        marka: "XXX Marka",
        fiyat: "1.000 TL",
        detay: "Güzel Ürünler",
      ),
      UrunCesitleri(
        resim: "assets/kozmetik/kozmetik.jpg",
        marka: "XXX Marka",
        fiyat: "1.000 TL",
        detay: "Güzel Ürünler",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1,
      children: gosterilecekListe!,
    );
  }
}
