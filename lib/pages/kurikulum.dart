import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class KurikulumPage extends StatelessWidget {
  const KurikulumPage({Key? key}) : super(key: key);

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
        Padding(
          padding: EdgeInsets.only(top: 15, bottom: 15),
          child: Text(
            'Kurikulum S1 Teknik Informatika',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        ClipRRect(
          child: Image.asset(
            'assets/img/kurikulum-informatika.JPG',
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Kurikulum prodi S1 Teknik Informatika dirancang berbasis output atau OBE (Outcome Based Educated) sesuai dengan buku panduan penyusunan kurikulum Universitas Muhammadiyah Kalimantan Timur serta memperhatikan Kerangka Kualifikasi Nasional Indonesia (KKNI) Rumpun Ilmu Informatika dan Komputer, yang disusun oleh APTIKOM, Oktober 16 dan ACM-IEEE 2013.',
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
