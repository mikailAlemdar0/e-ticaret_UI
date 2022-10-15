import 'package:flutter/material.dart';

class FavoriUrunler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Favori Ürünlerim",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade300),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              buildRowUrunler(
                marka: "XXX Marka",
                aciklama: "El Yapımı Erkek Ayakkabısı",
                resimYolu: "assets/ayakkabi_canta/ayakkabi.jpg",
                fiyat: "500 TL",
              ),
              buildBolucuCizgi(),
              buildRowUrunler(
                marka: "Rolex",
                aciklama: "El Yapımı Saat",
                resimYolu: "assets/saat/saat.jpg",
                fiyat: "2500 TL",
              ),
              buildBolucuCizgi(),
              buildRowUrunler(
                marka: "Tudors",
                aciklama: "İpek Yapımı Gömlek",
                resimYolu: "assets/giyim/gomlek.jpg",
                fiyat: "500 TL",
              ),
              buildBolucuCizgi(),
            ],
          ),
        ],
      ),
    );
  }

  Padding buildBolucuCizgi() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Divider(
        color: Colors.blue.shade700,
        height: 50.0,
      ),
    );
  }

  Row buildRowUrunler({
    String? resimYolu,
    String? marka,
    String? aciklama,
    String? fiyat,
  }) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Container(
            height: 150.0,
            width: 100.0,
            color: Colors.white,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.asset(
                resimYolu!,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                marka!,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3.0,
              ),
              Text(aciklama!),
              SizedBox(
                height: 3.0,
              ),
              Text("Kargo Bedava"),
              SizedBox(
                height: 3.0,
              ),
              Text(
                fiyat!,
                style: TextStyle(
                    color: Colors.blue.shade300,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Container(
                  child: Center(
                    child: Text(
                      "Sepete Ekle",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
