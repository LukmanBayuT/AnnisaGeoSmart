import 'package:annisageosmart/const/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'materi_3_carousel.dart';

class Materi3Video extends StatefulWidget {
  const Materi3Video({Key? key}) : super(key: key);

  @override
  State<Materi3Video> createState() => _Materi3VideoState();
}

class _Materi3VideoState extends State<Materi3Video> {
  final _url =
      'https://www.antaranews.com/berita/1982235/pemerintah-jalankan-lima-strategi-untuk-memanfaatkan-bonus-demografi';

  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg/bg.png'), fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Indonesia Dalam Menghadapi Bonus Demografi',
                      style: styleTitle.copyWith(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _launchURL();
                      },
                      child: Text(
                        'Lihat Artikel',
                        style: styleTitle.copyWith(fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Get.to(() => const Materi3Inti());
                        },
                        child: Text(
                          'Lanjut Ke Materi',
                          style: styleTitle.copyWith(fontSize: 18),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
