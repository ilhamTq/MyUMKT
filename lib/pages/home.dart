import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:my_umkt/models/menu_item.dart';
import 'package:my_umkt/pages/news.dart';

import '../models/berita_update.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MyUMKT'),
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 35, left: 25, right: 25),
          children: [
            ItemMenu(),
            Divider(
              color: Colors.grey[300],
              thickness: 6,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: TextButton(
                    onPressed: (() => Get.to(NewsPage())),
                    child: Text(
                      'News Update',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.start,
                    )),
              ),
            ),
            BeritaUpdate(),
          ],
        ));
  }
}
