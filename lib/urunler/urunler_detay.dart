import 'package:flutter/material.dart';

class UrunlerDetay extends StatelessWidget {
  String resim;
  String marka;
  String fiyat;
  String detay;

  UrunlerDetay({
    required this.resim,
    required this.marka,
    required this.fiyat,
    required this.detay,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 500,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      resim,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.blue.shade300,
                    size: 40,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              detay,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.blue.shade600,
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Text(
                  "Satıcı",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  marka,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue.shade300,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.blue.shade600,
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    fiyat,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade300,
                        fontWeight: FontWeight.bold),
                  ),
                  flex: 1,
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      height: 40,
                      child: Center(
                        child: Text(
                          "Sepete Ekle",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
