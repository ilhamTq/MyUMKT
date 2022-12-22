import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AIKPage extends StatelessWidget {
  const AIKPage({Key? key}) : super(key: key);

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
            'Lembaga Badan AIK',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Image.asset(
          'assets/img/lembaga-aik.png',
          height: 230,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Programs include professional coursework master’s, professional online master’s, research-based master’s, doctoral (PhD) programs and graduate diplomas.',
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
