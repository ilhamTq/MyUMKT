import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FIKPage extends StatelessWidget {
  const FIKPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyUMKT'),
      ),
      body: ListView(padding: EdgeInsets.only(left: 15, right: 15), children: [
        SizedBox(
          height: 15,
        ),
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/img/perawat.JPG')),
        Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Fakultas Ilmu Keperawatan',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          'Fakultas Ilmu Keperawatan merupakan salah satu fakultas yang ada di UMKT yang dimana menyelenggarakan pendidikan keperawatan yang Islami, unggul dibidang kegawatdaruratan dan berbasis teknologi informasi serta peka terhadap masalah kesehatan di masyarakat.',
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
