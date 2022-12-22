import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UKMPage extends StatelessWidget {
  const UKMPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyUMKT'),
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded)),
        // ],
      ),
      body: ListView(padding: EdgeInsets.only(left: 15, right: 15), children: [
        SizedBox(
          height: 15,
        ),
        Image.asset(
          'assets/img/ukm.JPG',
          height: 230,
        ),
        Padding(
          padding: EdgeInsets.only(top: 15, bottom: 15),
          child: Text(
            'UKM',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          'Unit Kegiatan Mahasiswa, berupa beberapa kegiatan yang menasah kekampuan dan kererampilan mahasiswa Muhammadyah Kalimantan Timur.\n'
          '\nAdapun UKM yang berjalan saat ini adalah Basket, Futsal dan Sepak Bola, Tenis Meja, Sunta (Seni Tari dan Seni Musik), Media Indie Kampus, Kelompok Studi Pasar Modal (KSPM), Bahana Enggang Choir, Mapala (Mahasiswa Pecinta Alam), dan Tapak Suci.',
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
