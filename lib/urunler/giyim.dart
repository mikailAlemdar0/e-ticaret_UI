import 'package:flutter/material.dart';
import 'package:e_ticaret/urunler/urun_cesitleri.dart';

class Giyim extends StatefulWidget {
  @override
  _GiyimState createState() => _GiyimState();
}

class _GiyimState extends State<Giyim> {
  List<Widget>? gosterilecekListe;

  @override
  void initState() {
    super.initState();
    gosterilecekListe = <Widget>[
      UrunCesitleri(
        resim: "assets/giyim/gomlek.jpg",
        marka: "XXX Marka",
        fiyat: "300 TL",
        detay: "Güzel Gömlek",
      ),
      UrunCesitleri(
        resim: "assets/giyim/gomlek.jpg",
        marka: "XXX Marka",
        fiyat: "300 TL",
        detay: "Güzel Gömlek",
      ),
      UrunCesitleri(
        resim: "assets/giyim/gomlek.jpg",
        marka: "XXX Marka",
        fiyat: "300 TL",
        detay: "Güzel Gömlek",
      ),
      UrunCesitleri(
        resim: "assets/giyim/gomlek.jpg",
        marka: "XXX Marka",
        fiyat: "300 TL",
        detay: "Güzel Gömlek",
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
      childAspectRatio: 0.5,
      children: gosterilecekListe!,
    );
  }
}
