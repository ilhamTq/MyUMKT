import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_umkt/pages/fakultas.dart';
import 'package:my_umkt/pages/fakultas_fik.dart';
import 'package:my_umkt/pages/fakultas_saintek.dart';
import 'package:my_umkt/pages/fakultas_kesmas.dart';
import 'package:my_umkt/pages/fakultas_hukum.dart';
import 'package:my_umkt/pages/fakultas_farmasi.dart';
import 'package:my_umkt/pages/fakultas_fp.dart';
import 'package:my_umkt/pages/home.dart';
import 'package:my_umkt/pages/kurikulum.dart';
import 'package:my_umkt/pages/lembaga.dart';
import 'package:my_umkt/pages/start.dart';
import 'package:my_umkt/pages/ukm.dart';

import 'pages/galeri.dart';
import 'pages/lembaga_aik.dart';
import 'pages/lembaga_akademik.dart';
import 'pages/kemahasiswaan.dart';
import 'pages/profil_kampus.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(
                foregroundColor: Colors.grey.shade900,
                toolbarHeight: 80,
                elevation: 0.5,
                backgroundColor: Color.fromARGB(255, 141, 171, 185),
                titleTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Colors.grey.shade800)),
            textTheme: GoogleFonts.poppinsTextTheme()),
        home: StartPage(),
        getPages: [
          GetPage(name: '/start', page: () => const StartPage()),
          GetPage(name: '/home', page: () => const HomePage()),
          GetPage(name: '/profil-kampus', page: () => const ProfilKampusPage()),
          GetPage(name: '/fakultas', page: () => const FakultasPage()),
          GetPage(name: '/lembaga', page: () => const LembagaPage()),
          GetPage(name: '/kurikulum', page: () => const KurikulumPage()),
          GetPage(name: '/ukm', page: () => const UKMPage()),
          GetPage(name: '/galeri', page: () => const GaleriPage()),
          GetPage(name: '/fakultas-fik', page: () => const FIKPage()),
          GetPage(name: '/fakultas-saintek', page: () => const FsaintekPage()),
          GetPage(name: '/fakultas-kesmas', page: () => const FkesmasPage()),
          GetPage(name: '/fakultas-hukum', page: () => const FhukumPage()),
          GetPage(name: '/fakultas-farmasi', page: () => const FfarmasiPage()),
          GetPage(name: '/fakultas-fp', page: () => const FPPage()),
          GetPage(name: '/lembaga-aik', page: () => const AIKPage()),
          GetPage(name: '/lembaga-akademik', page: () => const AkademikPage()),
          GetPage(
              name: '/lembaga-kemahasiswaan',
              page: () => const KemahasiswaanPage()),
        ]);
  }
}
