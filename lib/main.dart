import 'package:flutter/material.dart';
import 'package:e_ticaret/urunler/urunler.dart';
import 'package:e_ticaret/favori_urunler.dart';
import 'package:e_ticaret/sepetim.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Projem",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  List<Widget>? icerikler;

  int aktifSayfaNo = 0;

  @override
  void initState() {
    super.initState();

    icerikler = [
      Urunler(),
      FavoriUrunler(),
      Sepetim(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Alışveriş Durağı",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.blue.shade300,
      ),
      body: icerikler![aktifSayfaNo],
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Mikail ALEMDAR"),
              accountEmail: Text("m.alemdar184@outlook.com"),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  image: DecorationImage(
                    image: AssetImage("assets/profil/my_photo.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(70),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("Profilim"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Siparişlerim"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Ayarlar"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Mesajlar"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Çıkış"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 18,
        selectedIconTheme: IconThemeData(size: 25),
        iconSize: 20,
        currentIndex: aktifSayfaNo,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue.shade300,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: "Ürünler",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favori Ürünler",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Sepetim",
          ),
        ],
        onTap: (int tiklananButonIndex) {
          setState(() {
            aktifSayfaNo = tiklananButonIndex;
          });
        },
      ),
    );
  }
}
