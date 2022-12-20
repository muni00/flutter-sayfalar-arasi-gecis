import 'package:flutter/material.dart';
import 'package:odev_4/sayfa_y.dart';

class SayfaX extends StatefulWidget {
  const SayfaX({Key? key}) : super(key: key);

  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  Future<bool> geriTusu(BuildContext context) async {
    print("geri tuşuna basıldı");
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: WillPopScope(
        onWillPop: () => geriTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("SAYFA X",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              ElevatedButton(
                  onPressed: () {
                    //Navigator.of(context).popUntil((route) => route.isFirst);
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
