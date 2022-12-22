import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GaleriPage extends StatelessWidget {
  const GaleriPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyUMKT'),
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded)),
        // ],
      ),
      body: ListView(padding: EdgeInsets.only(left: 12, right: 12), children: [
        Padding(
          padding: EdgeInsets.only(top: 15, bottom: 15),
          child: Text(
            'Galeri',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Flexible(
                flex: 1,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  margin: EdgeInsets.all(5),
                  color: Colors.grey,
                  child: Image.asset(
                    'assets/img/kampus.png',
                    fit: BoxFit.cover,
                  ),
                )),
            Flexible(
                flex: 1,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  margin: EdgeInsets.all(5),
                  color: Colors.grey,
                  child: Image.asset(
                    'assets/img/kurikulum-informatika.JPG',
                    fit: BoxFit.cover,
                  ),
                )),
            Flexible(
                flex: 1,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  margin: EdgeInsets.all(5),
                  color: Colors.grey,
                  child: Image.asset(
                    'assets/img/ukm.JPG',
                    fit: BoxFit.cover,
                  ),
                )),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 1,
              child: Container(
                height: 130,
                child: Image.asset(
                  'assets/img/kurikulum-informatika.JPG',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              flex: 1,
              child: Container(
                height: 130,
                child: Image.asset(
                  'assets/img/kampus.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Image.asset(
          'assets/img/ukm.JPG',
          height: 130,
          fit: BoxFit.cover,
        )
      ]),
    );
  }
}

// class GaleriModel extends StatelessWidget {
//   const GaleriModel({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
    
//   }
// }
