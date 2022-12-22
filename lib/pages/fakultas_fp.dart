import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FPPage extends StatelessWidget {
  const FPPage({Key? key}) : super(key: key);

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
            child: Image.asset('assets/img/psikologi.JPG')),
        Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Fakultas Psikologi',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          'Fakultas Psikologi merupakan salah satu fakultas yang ada di UMKT yang dimana menyelenggarakan proses pendidikan dan pengjaran dibidang psikologi berlandaskan nilai-nilai islam yang berbasis teknologi informasi.',
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
