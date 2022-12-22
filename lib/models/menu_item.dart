import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ItemMenu extends StatelessWidget {
  const ItemMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      height: MediaQuery.of(context).size.height * 0.4,
      child: GridView.custom(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        childrenDelegate: SliverChildListDelegate([
          MenuModel(
            img: 'assets/img/profil_kampus.png',
            title: 'Profil Kampus',
            routes: '/profil-kampus',
          ),
          MenuModel(
              img: 'assets/img/fakultas.png',
              title: 'Fakultas',
              routes: '/fakultas'),
          MenuModel(
              img: 'assets/img/lembaga.png',
              title: 'Lembaga',
              routes: '/lembaga'),
          MenuModel(
              img: 'assets/img/kurikulum.png',
              title: 'Kurikulum',
              routes: '/kurikulum'),
          MenuModel(img: 'assets/img/ukm.png', title: 'UKM', routes: '/ukm'),
          MenuModel(
              img: 'assets/img/galeri.png', title: 'Galeri', routes: '/galeri'),
        ]),
      ),
    );
  }
}

class MenuModel extends StatelessWidget {
  final String img;
  final String title;
  final String routes;
  MenuModel({required this.img, required this.title, required this.routes});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(routes),
      child: Container(
        padding: EdgeInsets.all(5),
        width: 70,
        child: Column(
          children: [
            Image.asset(
              img,
              height: 70,
              width: 70,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
