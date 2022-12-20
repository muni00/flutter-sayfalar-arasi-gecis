import 'package:flutter/material.dart';
import 'package:odev_4/sayfa_y.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({Key? key}) : super(key: key);

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  Future<bool> geriTusu(BuildContext context) async {
    print("navigator tuşuna tıklandı");
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: WillPopScope(
        onWillPop: () => geriTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("SAYFA B",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SayfaY()));
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  child: const Text("GİT > Y")),
            ],
          ),
        ),
      ),
    );
  }
}
