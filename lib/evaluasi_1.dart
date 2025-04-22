import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Tabel',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Data Mahasiswa'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Header
              Row(
                children: [
                  buildCell('No', flex: 1, isHeader: true),
                  buildCell('NIM', flex: 2, isHeader: true),
                  buildCell('NAMA', flex: 3, isHeader: true),
                ],
              ),
              buildDivider(),
              // Baris 1
              Row(
                children: [
                  buildCell('1', flex: 1),
                  buildCell('1106315', flex: 2),
                  buildCell('Depandi Enda', flex: 3),
                ],
              ),
              buildDivider(),
              // Baris 2
              Row(
                children: [
                  buildCell('2', flex: 1),
                  buildCell('1106316', flex: 2),
                  buildCell('Budi Handoyo', flex: 3),
                ],
              ),
              buildDivider(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCell(String text, {int flex = 1, bool isHeader = false}) {
    return Expanded(
      flex: flex,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget buildDivider() {
    return SizedBox(height: 1);
  }
}
