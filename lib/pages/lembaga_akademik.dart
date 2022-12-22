import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AkademikPage extends StatelessWidget {
  const AkademikPage({Key? key}) : super(key: key);

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
            'Lembaga Akademik',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Image.asset(
          'assets/img/akademik.JPG',
          height: 230,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Wize offers unparalleled resources to the University Community, including libraries, laboratories, museums, and research centers.',
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
