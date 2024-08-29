import 'package:flutter/material.dart';

void main() => runApp(UiBerita());

class UiBerita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BolaHomePage(),
    );
  }
}

class BolaHomePage extends StatefulWidget {
  @override
  _BolaHomePageState createState() => _BolaHomePageState();
}

class _BolaHomePageState extends State<BolaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BABE'),
        backgroundColor: Color(0x7DD74916),
        leading: Icon(Icons.sports_soccer_sharp),
        actions: [
          //icon profile
          CircleAvatar(
              backgroundImage: AssetImage('assets/images/icon_babe.png'),
          ),
          SizedBox(width: 10),
          Icon(Icons.signal_cellular_alt_2_bar),
          SizedBox(width: 10),
          Text('8:11')
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('BERITA TERBARU', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('PERTANDINGAN HARI INI', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            // Berita Utama
            Container(
              margin: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/bola menang.jpeg',
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Costa Mendekat Ke Palmeiras',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Transfer',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            // Berita Lainnya
            Container(
              margin: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/bola menang.jpeg',
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Presiden Apresiasi Kemenangan Timnas Sepak Bola Indonesia di SEA Games 2023',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Indonesia Mei 17, 2023',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            // Berita Lainnya
            Container(
              margin: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/u23.jpeg',
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Kemenangan Timnas Indonesia U-23 dan Senyum dari Jabar',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Indonesia April 24, 2024',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.square),
            label: '',
          ),
        ],
      ),
    );
  }
}