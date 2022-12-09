import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Menu',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: const foodPage(),
      ),
    );
  }
}

// ignore: camel_case_types
class foodPage extends StatefulWidget {
  const foodPage({super.key});

  @override
  State<foodPage> createState() => _foodPageState();
}

class _foodPageState extends State<foodPage> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;
  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana ',
    'Tavuksuyu ',
    'Düğün ',
    'Yogurtlu'
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı ',
    'Kuru fasulye ',
    'İçli Köfte ',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava ',
    'Sütlaç ',
    'Kazandibi ',
    'Dondurma'
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        corbaNo = Random().nextInt(4) + 1;
                      });
                    },
                    child: Image.asset('assets/corba_$corbaNo.jpg')),
              )),
          Text(
            corbaAdlari[corbaNo],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: const Divider(
              height: 7,
              color: Colors.black,
            ),
          ),
          Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    yemekNo = Random().nextInt(4) + 1;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/yemek_$yemekNo.jpg'),
                ),
              )),
          Text(
            yemekAdlari[yemekNo],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: const Divider(
              height: 7,
              color: Colors.black,
            ),
          ),
          Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    tatliNo = Random().nextInt(4) + 1;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/tatli_$tatliNo.jpg'),
                ),
              )),
          Text(
            tatliAdlari[tatliNo],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: const Divider(
              height: 7,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
