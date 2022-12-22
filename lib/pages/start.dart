import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:my_umkt/pages/home.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.only(left: 30, right: 30, top: 40),
        children: [
          Container(
            child: Image.asset(
              'assets/img/umkt.png',
              height: 180,
              width: 180,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'MyUMKT',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 17),
          DottedLine(
            dashRadius: 10,
            dashGapRadius: 10,
            dashLength: 4,
            dashColor: Colors.blue,
          ),
          SizedBox(
            height: 35,
          ),
          Text(
              'Sistem informasi seputar\nUniversitas Muhammadiyah\nKalimantan Timur',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.blue,
                  fontWeight: FontWeight.w400)),
          SizedBox(
            height: 35,
          ),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
              child: Text('Get Started',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blue,
                  )))
        ],
      )),
    );
  }
}
