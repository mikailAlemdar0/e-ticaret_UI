import 'package:flutter/material.dart';
import 'package:e_ticaret/urunler/urun_cesitleri.dart';

class AyakkabiCanta extends StatefulWidget {
  @override
  _AyakkabiCantaState createState() => _AyakkabiCantaState();
}

class _AyakkabiCantaState extends State<AyakkabiCanta> {
  List<Widget>? gosterilecekListe;

  @override
  void initState() {
    super.initState();
    gosterilecekListe = <Widget>[
      UrunCesitleri(
        resim: "assets/ayakkabi_canta/ayakkabi.jpg",
        marka: "XXX Marka",
        fiyat: "500 TL",
        detay: "Güzel Ayakkabı",
      ),
      UrunCesitleri(
        resim: "assets/ayakkabi_canta/ayakkabi.jpg",
        marka: "XXX Marka",
        fiyat: "500 TL",
        detay: "Güzel Ayakkabı",
      ),
      UrunCesitleri(
        resim: "assets/ayakkabi_canta/ayakkabi.jpg",
        marka: "XXX Marka",
        fiyat: "500 TL",
        detay: "Güzel Ayakkabı",
      ),
      UrunCesitleri(
        resim: "assets/ayakkabi_canta/ayakkabi.jpg",
        marka: "XXX Marka",
        fiyat: "500 TL",
        detay: "Güzel Ayakkabı",
      ),
      UrunCesitleri(
        resim: "assets/ayakkabi_canta/ayakkabi.jpg",
        marka: "XXX Marka",
        fiyat: "5.000 TL",
        detay: "Güzel Çanta",
      ),
      UrunCesitleri(
        resim: "assets/ayakkabi_canta/ayakkabi.jpg",
        marka: "XXX Marka",
        fiyat: "5.000 TL",
        detay: "Güzel Çanta",
      ),
      UrunCesitleri(
        resim: "assets/ayakkabi_canta/ayakkabi.jpg",
        marka: "XXX Marka",
        fiyat: "5.000 TL",
        detay: "Güzel Çanta",
      ),
      UrunCesitleri(
        resim: "assets/ayakkabi_canta/ayakkabi.jpg",
        marka: "XXX Marka",
        fiyat: "5.000 TL",
        detay: "Güzel Çanta",
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
