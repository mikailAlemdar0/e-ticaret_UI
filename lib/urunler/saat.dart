import 'package:flutter/material.dart';
import 'package:e_ticaret/urunler/urun_cesitleri.dart';

class Saat extends StatefulWidget {
  @override
  _SaatState createState() => _SaatState();
}

class _SaatState extends State<Saat> {
  List<Widget>? gosterilecekListe;

  @override
  void initState() {
    super.initState();
    gosterilecekListe = <Widget>[
      UrunCesitleri(
        resim: "assets/saat/saat.jpg",
        marka: "XXX Marka",
        fiyat: "2.500 TL",
        detay: "Güzel Saat",
      ),
      UrunCesitleri(
        resim: "assets/saat/saat.jpg",
        marka: "XXX Marka",
        fiyat: "2.500 TL",
        detay: "Güzel Saat",
      ),
      UrunCesitleri(
        resim: "assets/saat/saat.jpg",
        marka: "XXX Marka",
        fiyat: "2.500 TL",
        detay: "Güzel Saat",
      ),
      UrunCesitleri(
        resim: "assets/saat/saat.jpg",
        marka: "XXX Marka",
        fiyat: "2.500 TL",
        detay: "Güzel Saat",
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
