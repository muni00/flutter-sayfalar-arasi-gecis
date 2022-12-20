import 'package:flutter/material.dart';
import 'package:odev_4/sayfa_b.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({Key? key}) : super(key: key);

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("SAYFA A",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
            ElevatedButton(
                onPressed: () {
                  //Navigator.of(context).popUntil((route) => route.isFirst);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const SayfaB()));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                child: const Text("GİT > B")),
          ],
        ),
      ),
    );
  }
}
