import 'package:flutter/material.dart';

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  TeksUtama({super.key});

  @override
  State<StatefulWidget> createState() => state;
}

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Tria Bela Sisiliana',
    'Yusia Marta',
    'Ayu Setiyowati',
    'Julia Kurnia Mubarokah',
    'Rizka Nur Kharifah',
  ];
  var listWarna = [
    Color.fromARGB(255, 44, 42, 42),
    Color.fromARGB(255, 58, 61, 104),
    const Color.fromARGB(255, 62, 194, 66),
    Color.fromARGB(255, 118, 116, 158),
    Color.fromARGB(255, 122, 182, 123),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 16.0),
        Text(
          'Apa kabar',
          textDirection: TextDirection.ltr,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          listNama[index % listNama.length],
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: listWarna[index % listWarna.length],
          ),
        ),
      ],
    );
  }

  void incrementIndex() {
    setState(() {
      index++;
    });
  }
}

void main() {
  TeksUtama teksUtama = TeksUtama();
  runApp(MaterialApp(
    title: 'Halo Dunia',
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[800],
        title: const Text(
          'Halo Dunia',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 230, 86, 210), // Ganti warna latar belakang di sini
        ),
        child: Center(child: teksUtama),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Random',
        onPressed: teksUtama.state.incrementIndex,
        child: const Icon(Icons.refresh),
      ),
    ),
  ));
}