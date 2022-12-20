import 'package:flutter/material.dart';
import 'package:odev_4/sayfa_a.dart';
import 'package:odev_4/sayfa_x.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("ANASAYFA",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SayfaA()));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                child: const Text("GİT > A")),
            ElevatedButton(
                onPressed: () {
                  //Navigator.of(context).popUntil((route) => route.isFirst);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SayfaX()));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                child: const Text("GİT > X")),
          ],
        ),
      ),
    );
  }
}
