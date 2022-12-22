import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FsaintekPage extends StatelessWidget {
  const FsaintekPage({Key? key}) : super(key: key);

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
            child: Image.asset('assets/img/saintek.JPG')),
        Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Fakultas Sains dan Teknologi',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          'Fakultas sains dan teknologi merupakan salah satu fakultas yang ada di UMKT yang dimana menyelenggarakan pembelajaran secara profesional dan inovatif dengan menerapkan model pembelajaran aktif berbasis teknologi informasi serta mengedepankan pendekatan akhlak Islami dan Kemuhammadiyahan.',
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
