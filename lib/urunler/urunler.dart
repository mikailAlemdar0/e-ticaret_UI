import 'package:flutter/material.dart';
import 'package:e_ticaret/urunler/elektronik.dart';
import 'package:e_ticaret/urunler/saat.dart';
import 'package:e_ticaret/urunler/ayakkabi_canta.dart';
import 'package:e_ticaret/urunler/kozmetik.dart';
import 'package:e_ticaret/urunler/giyim.dart';

class Urunler extends StatefulWidget {
  @override
  _UrunlerState createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tabController,
          indicatorColor: Colors.blue.shade300,
          labelColor: Colors.blue.shade300,
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          tabs: <Widget>[
            Tab(
              child: Text("Elektronik"),
            ),
            Tab(
              child: Text("Saat"),
            ),
            Tab(
              child: Text("Ayakkabı & Çanta"),
            ),
            Tab(
              child: Text("Kozmetik"),
            ),
            Tab(
              child: Text("Giyim"),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: <Widget>[
              Elektronik(),
              Saat(),
              AyakkabiCanta(),
              Kozmetik(),
              Giyim(),
            ],
          ),
        ),
      ],
    );
  }
}
