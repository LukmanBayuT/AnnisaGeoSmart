import 'package:annisageosmart/const/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'materi_2_carousel.dart';

class Materi2Video extends StatefulWidget {
  const Materi2Video({Key? key}) : super(key: key);

  @override
  State<Materi2Video> createState() => _Materi2VideoState();
}

class _Materi2VideoState extends State<Materi2Video> {
  final _url = 'https://www.youtube.com/watch?v=gzEwRPJzjQA';

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
                      'Sebelum melanjutkan perjalanan materi, simak dulu video ini!',
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
                        'Lihat Video',
                        style: styleTitle.copyWith(fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Get.to(() => const Materi2Inti());
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
