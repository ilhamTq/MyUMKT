import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BeritaUpdate extends StatefulWidget {
  const BeritaUpdate({Key? key}) : super(key: key);

  @override
  State<BeritaUpdate> createState() => _BeritaUpdateState();
}

class _BeritaUpdateState extends State<BeritaUpdate> {
  var db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: db.collection('news').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('ERROR');
            }
            var data = snapshot.data!.docs;

            return Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.grey.shade200),
              child: Column(
                children: [
                  Text(
                    data[0].data()['judul'],
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Image.network(
                    data[0].data()['url'],
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    data[0].data()['deskripsi'],
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            );
          }),
    );
  }
}
