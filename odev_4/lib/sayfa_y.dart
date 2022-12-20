import 'package:flutter/material.dart';

class SayfaY extends StatefulWidget {
  const SayfaY({Key? key}) : super(key: key);

  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("SAYFA Y",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          SizedBox(
            height: 200.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0, right: 40.0),
            child: Text("GERİ TUŞU İLE DİREK ANASAYFAYA DÖNECEK",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
          )
        ],
      ),
    );
  }
}
