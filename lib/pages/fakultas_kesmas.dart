import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FkesmasPage extends StatelessWidget {
  const FkesmasPage({Key? key}) : super(key: key);

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
            child: Image.asset('assets/img/kesmas.JPG')),
        Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Fakultas Kesehatan Masyarakat',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          'Fakultas ilmu kesehatan masyarakat merupakan salah satu fakultas yang ada di UMKT yang dimana menyelenggarakan pendidikan kesehatan masyarakat yang islami berbasis teknologi informasi yang peka terhadap kesehatan Masyarakat.',
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
