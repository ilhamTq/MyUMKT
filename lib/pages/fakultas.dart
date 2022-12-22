import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class FakultasPage extends StatelessWidget {
  const FakultasPage({Key? key}) : super(key: key);

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
        //           child: Text('Profil Kampus',
        //               textAlign: TextAlign.center,
        //               style: TextStyle(fontSize: 17))),
        //       PopupMenuItem(
        //           onTap: () {},
        //           child: Text('Fakultas',
        //               textAlign: TextAlign.center,
        //               style: TextStyle(fontSize: 17))),
        //       PopupMenuItem(
        //           onTap: () {},
        //           child: Text('Lembaga',
        //               textAlign: TextAlign.center,
        //               style: TextStyle(fontSize: 17))),
        //       PopupMenuItem(
        //           onTap: () {},
        //           child: Text('Kurikulum',
        //               textAlign: TextAlign.center,
        //               style: TextStyle(fontSize: 17))),
        //       PopupMenuItem(
        //           onTap: () {},
        //           child: Text('UKM',
        //               textAlign: TextAlign.center,
        //               style: TextStyle(fontSize: 17))),
        //       PopupMenuItem(
        //           onTap: () {},
        //           child: Text('Galeri',
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
                'Fakultas',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            FakultasModel(
              fakultas: 'FAKULTAS PSIKOLOGI',
              routes: '/fakultas-fp',
            ),
            FakultasModel(
                fakultas: 'FAKULTAS SAINS DAN TEKNOLOGI',
                routes: '/fakultas-saintek'),
            FakultasModel(
                fakultas: 'FAKULTAS KESEHATAN MASYARAKAT',
                routes: '/fakultas-kesmas'),
            FakultasModel(
                fakultas: 'FAKULTAS HUKUM', routes: '/fakultas-hukum'),
            FakultasModel(
                fakultas: 'FAKULTAS FARMASI', routes: '/fakultas-farmasi'),
            FakultasModel(
                fakultas: 'FAKULTAS ILMU KEPERAWATAN', routes: '/fakultas-fik'),
          ]),
    );
  }
}

class FakultasModel extends StatelessWidget {
  final String fakultas;
  final String routes;
  FakultasModel({required this.fakultas, required this.routes});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(routes),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 1.5),
            color: Color.fromARGB(255, 58, 211, 165)),
        child: Text(
          fakultas,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        ),
      ),
    );
  }
}
