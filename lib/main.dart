import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Diri',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.brown,
          foregroundColor: Colors.white,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.brown[900], fontSize: 16),
        ),
      ),
      home: BiodataPage(),
    );
  }
}

class BiodataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil dan Biodata Diri'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ClipOval(
                  child: Image.asset(
                    'images/logo_vokasi.png', // Gambar profil
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Hastita Sari',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[800],
                  ),
                ),
                const SizedBox(height: 20),
                Divider(color: Colors.brown),
                const SizedBox(height: 10),
                BiodataItem(label: 'Tanggal Lahir', value: '14 september 2005'),
                BiodataItem(label: 'Email', value: 'hastita@gmail.com'),
                BiodataItem(label: 'Nomor HP', value: '0812-3456-7890'),
                BiodataItem(label: 'Hobi', value: 'beladiri dan Coding'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BiodataItem extends StatelessWidget {
  final String label;
  final String value;

  const BiodataItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.brown[700],
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(color: Colors.brown[900]),
            ),
          ),
        ],
      ),
    );
  }
}
