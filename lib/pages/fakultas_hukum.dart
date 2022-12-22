import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FhukumPage extends StatelessWidget {
  const FhukumPage({Key? key}) : super(key: key);

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
            child: Image.asset('assets/img/hukum.JPG')),
        Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Fakultas Hukum',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          'Fakultas hukum merupakan salah satu fakultas yang ada di UMKT yang dimana menyelenggarakan proses pendidikan dan pengajaran hukum dibidang industry berbasis teknologi informasi yang unggul serta dilandasi nilai-nilai keislaman.',
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
