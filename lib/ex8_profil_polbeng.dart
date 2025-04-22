import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Implementasi Row & Column',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String judul = 'Politeknik Negeri Bengkalis';
  final String lokasi = 'Bengkalis, Riau';
  final String deskripsi = "Politeknik Negeri Bengkalis (POLBENG) adalah satu-satunya politeknik negeri yang berada di Riau. Pada tanggal 29 Juli 2011, Politeknik Bengkalis resmi menjadi PTN dengan nama Politeknik Negeri Bengkalis melalui Peraturan Menteri Pendidikan Nasional (Permendiknas) No. 28 tahun 2011 tentang Pendirian, Organisasi dan Tata Kerja Politeknik Negeri Bengkalis. Hingga saat ini POLBENG sudah memiliki 8 jurusan yaitu teknik perkapalan, teknik mesin, teknik elektro, teknik sipil, administrasi niaga, teknik informatika, kemaritiman dan bahasa.";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil POLBENG'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'images/logo_polbeng.png',
            height: 245.0,
            width: 245.0,
            fit: BoxFit.fill,
          ),
          Container(height: 5.0),
          Row(
            children: <Widget>[
              Container(width: 10.0, height: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    this.judul,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    this.lokasi,
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(width: 15.0),
              Icon(
                Icons.star,
                size: 32.0,
                color: Colors.red,
              ),
              Text(
                '5',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              this.deskripsi,
              style: TextStyle(
                fontSize: 15.0,
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}