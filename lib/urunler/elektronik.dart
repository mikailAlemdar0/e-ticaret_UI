import 'package:flutter/material.dart';
import 'package:e_ticaret/urunler/urun_cesitleri.dart';

class Elektronik extends StatefulWidget {
  @override
  _ElektronikState createState() => _ElektronikState();
}

class _ElektronikState extends State<Elektronik> {
  List<Widget>? gosterilecekListe;

  @override
  void initState() {
    super.initState();

    gosterilecekListe = <Widget>[
      UrunCesitleri(
        resim: "assets/elektronik/laptop.jpg",
        marka: "XXX Marka",
        fiyat: "10.000 TL",
        detay: "i7 İşlemcili, 16gb Ram, 4gb Ekran Kartı",
      ),
      UrunCesitleri(
        resim: "assets/elektronik/phone.jpg",
        marka: "XXX Marka",
        fiyat: "5.000 TL",
        detay: "Güzel Telefon",
      ),
      UrunCesitleri(
        resim: "assets/elektronik/kulaklik.jpg",
        marka: "XXX Marka",
        fiyat: "1.000 TL",
        detay: "Güzel Kulaklık",
      ),
      UrunCesitleri(
        resim: "assets/elektronik/tablet.jpg",
        marka: "XXX Marka",
        fiyat: "5.000 TL",
        detay: "Güzel Tablet",
      ),
      UrunCesitleri(
        resim: "assets/elektronik/mikrofon.jpg",
        marka: "XXX Marka",
        fiyat: "2.000 TL",
        detay: "Güzel Mikrofon",
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
