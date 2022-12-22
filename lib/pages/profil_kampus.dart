import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilKampusPage extends StatelessWidget {
  const ProfilKampusPage({Key? key}) : super(key: key);

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
      body: ListView(padding: EdgeInsets.only(left: 15, right: 15), children: [
        SizedBox(
          height: 15,
        ),
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/img/kampus.png')),
        Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Profil Kampus',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          'Universitas Muhammadiyah Kalimantan Timur (UMKT) adalah hasil penggabungan STIKES Muhammadiyah Samarinda dan STIE Muhammadiyah Samarinda dengan penambahan 10 Program Studi baru.\n\n'
          'UMKT mempunyai dua kampus induk dengan luas area 15ha. Kampus 1 UMKT terletak di Komplek Perguruan Tinggi Muhammadiyah, Jl. Ir. H. Juanda No.15 dan Kampus 2 UMKT terletak di Jl. Pelita Komplek Pesona Mahakam. Penyelenggaraan pendidikan di UMKT ditunjang fasilitas pembelajaran yang sangat memadai, mulai dari ruangan kelas yang representatif, laboratorium yang lengkap, dan perpustakaan berbasis tekonologi informasi.',
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
