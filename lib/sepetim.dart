import 'package:flutter/material.dart';

class Sepetim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "Sepetim",
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
            ListTile(
              title: Text(
                "Kot Pantolon",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: Text("1 Adet X 150 TL"),
              trailing: Text("300 TL"),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                "Kazak",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: Text("3 Adet X 120 TL"),
              trailing: Text("360 TL"),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                "Tişört",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: Text("2 Adet X 50 TL"),
              trailing: Text("100 TL"),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                "Saat",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: Text("1 Adet X 500 TL"),
              trailing: Text("500 tl"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 50.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Toplam Tutar",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade300),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("1260 TL")
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text(
                    "Alışverişi Tamamla",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
