import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class LembagaPage extends StatelessWidget {
  const LembagaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyUMKT'),
        // actions: [
        //   PopupMenuButton(
        //     itemBuilder: (context) => [
        //       PopupMenuItem(
        //           onTap: () {},
        //           child: Text('AIK',
        //               textAlign: TextAlign.center,
        //               style: TextStyle(fontSize: 17))),
        //       PopupMenuItem(
        //           onTap: () {},
        //           child: Text('Akademik',
        //               textAlign: TextAlign.center,
        //               style: TextStyle(fontSize: 17))),
        //       PopupMenuItem(
        //           onTap: () {},
        //           child: Text('Kemahasiswaan',
        //               textAlign: TextAlign.center,
        //               style: TextStyle(fontSize: 17))),
        //     ],
        //     child: Icon(Icons.menu_rounded),
        //   )
        // ],
      ),
      body: ListView(
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Lembaga',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Lembaga kepengurusan badan AIK, Akademik dan Kemahasiswaan',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                LembagaModel(
                    routes: '/lembaga-aik',
                    lembaga: 'Lembaga\nKepengurusan\nAIK',
                    color: Colors.green.shade500),
                LembagaModel(
                    routes: '/lembaga-akademik',
                    lembaga: 'Akademik',
                    color: Colors.red.shade400),
                LembagaModel(
                    routes: '/lembaga-kemahasiswaan',
                    lembaga: 'Kemahasiswaan',
                    color: Colors.blue.shade800)
              ],
            )
          ]),
    );
  }
}

class LembagaModel extends StatelessWidget {
  final String lembaga;
  final Color color;
  final String routes;
  LembagaModel(
      {required this.lembaga, required this.color, required this.routes});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(routes),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
        child: Text(
          lembaga,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
      ),
    );
  }
}
