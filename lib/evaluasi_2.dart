import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deskripsi Hari',
      home: HariPage(),
    );
  }
}

class HariPage extends StatefulWidget {
  @override
  _HariPageState createState() => _HariPageState();
}

class _HariPageState extends State<HariPage> {
  String _deskripsi = '';

  // Map hari dan deskripsinya
  final Map<String, String> hariDeskripsi = {
    'Senin': 'Hari yang luar biasa untuk memulai pekerjaanmu.',
    'Selasa': 'Tetap semangat mengerjakan tugas.',
    'Rabu': 'Selalu bahagia dan bersyukur dengan apa yang telah diperoleh.',
    'Kamis': 'Kerja keras untuk menggapai cita-cita.',
    'Jumat': 'Jangan lupa untuk beribadah.',
    'Sabtu': 'Selamat weekend.',
    'Minggu': 'Manfaatkan hari Minggumu untuk istirahat.',
  };

  void tampilkanDeskripsi(String hari) {
    setState(() {
      _deskripsi = hariDeskripsi[hari] ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deskripsi Hari'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Baris tombol-tombol hari
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: hariDeskripsi.keys.map((hari) {
                return ElevatedButton(
                  onPressed: () => tampilkanDeskripsi(hari),
                  child: Text(hari),
                );
              }).toList(),
            ),
            SizedBox(height: 24),
            // Menampilkan deskripsi
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deskripsi: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(child: Text(_deskripsi)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
