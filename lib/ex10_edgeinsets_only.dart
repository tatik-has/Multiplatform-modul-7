import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jarak Komponen',
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
        title: Text("Metode EdgeInsets.only"),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.lightBlue,
              margin: const EdgeInsets.only(top: 50.0),
              padding: const EdgeInsets.only(left: 70.0, right: 10.0),
              child: ElevatedButton(
                child: Text('Button'),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}