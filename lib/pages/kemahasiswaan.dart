import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class KemahasiswaanPage extends StatelessWidget {
  const KemahasiswaanPage({Key? key}) : super(key: key);

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
            'Kemahasiswaan',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Image.asset(
          'assets/img/kemahasiswaan.JPG',
          height: 230,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Looking forward at wize isn’t limited to the classroom. It happens throughout campus each and every day through our student activities.',
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
