import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mengatur Teks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Metode Text.textAlign"),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/kemdikbud.jpg',
            height: 250.0,
            fit: BoxFit.fill,
          ),
          Divider(),
          Image.asset(
            'images/logo_polbeng.png',
            height: 250.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}