import 'package:flutter/material.dart';
import 'package:e_ticaret/urunler/urunler_detay.dart';

class UrunCesitleri extends StatefulWidget {
  String resim;
  String marka;
  String fiyat;
  String detay;

  UrunCesitleri({
    required this.resim,
    required this.marka,
    required this.fiyat,
    required this.detay,
  });

  @override
  _UrunCesitleriState createState() => _UrunCesitleriState();
}

class _UrunCesitleriState extends State<UrunCesitleri> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UrunlerDetay(
              resim: widget.resim,
              marka: widget.marka,
              fiyat: widget.fiyat,
              detay: widget.detay,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade100,
          border: Border.all(color: Colors.grey.shade500, width: 1.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  widget.resim,
                ),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Text(
              widget.marka,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 0,
            ),
            Text(
              widget.fiyat,
              style: TextStyle(
                fontSize: 15,
                color: Colors.blue.shade300,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
