import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vokasi Kuat',
      home: VokasiPage(),
    );
  }
}

class VokasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logo Vokasi'),
        actions: [
          IconButton(
            icon: Icon(Icons.anchor), // ← icon jangkar
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Tombol jangkar ditekan')),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Image.asset('images/logo_vokasi.png'),
      ),
    );
  }
}
