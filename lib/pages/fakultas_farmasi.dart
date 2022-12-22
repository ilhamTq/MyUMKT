import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FfarmasiPage extends StatelessWidget {
  const FfarmasiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyUMKT'),
      ),
      body: ListView(padding: EdgeInsets.only(left: 15, right: 15), children: [
        SizedBox(
          height: 15,
        ),
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/img/farmasi.JPG')),
        Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Fakultas Farmasi',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          'Fakultas farmasi merupakan salah satu fakultas yang ada di UMKT yang dimana menyelenggarakan pendidikan farmasi yang unggul, berkarakter Islami dengan berbasis IPTEKS dan kewirausahaan. Menghasilkan lulusan sarjana farmasi yang memiliki karakter islami dan berjiwa kewirausahaan sehingga mampu bersaing secara nasional.',
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
