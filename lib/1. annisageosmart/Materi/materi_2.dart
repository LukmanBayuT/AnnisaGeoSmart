import 'package:annisageosmart/1.%20annisageosmart/Materi/materi_2_video.dart';
import 'package:annisageosmart/const/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Materi2 extends StatefulWidget {
  const Materi2({Key? key}) : super(key: key);

  @override
  State<Materi2> createState() => _Materi2State();
}

class _Materi2State extends State<Materi2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ruparupa/pend.jpg'),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: MediaQuery.of(context).size.height / 6,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Pertemuan 2',
                      style: styleTitle.copyWith(fontSize: 20),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 3,
                        height: 10,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                        'Analisis Kependudukan dan Mobilitas Kependudukan')
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 1.5,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: MediaQuery.of(context).size.height / 3,
                      color: Colors.white24,
                      child: const Center(
                        child: Text('Nanti Animasi Disini'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '“Fokus dan konsentrasi akan membantu mencapai tujuan kita”\n- Kaesang Pangarep -',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: () {
                          Get.to(() => const Materi2Video());
                        },
                        child: const Text('Lanjut Materi 2'))
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
