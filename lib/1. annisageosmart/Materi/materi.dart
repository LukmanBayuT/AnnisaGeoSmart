import 'package:annisageosmart/1.%20annisageosmart/Materi/materi_1.dart';
import 'package:annisageosmart/1.%20annisageosmart/Materi/materi_2.dart';
import 'package:annisageosmart/1.%20annisageosmart/Materi/materi_3.dart';
import 'package:annisageosmart/const/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MateriScreenAnnisa extends StatefulWidget {
  const MateriScreenAnnisa({Key? key}) : super(key: key);

  @override
  State<MateriScreenAnnisa> createState() => _MateriScreenAnnisaState();
}

class _MateriScreenAnnisaState extends State<MateriScreenAnnisa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bg/BGMateri.png'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: MediaQuery.of(context).size.height / 10,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )),
                        child: Text(
                          'Sumber Data, Komposisi dan Kualitas Kependudukan',
                          style: stylemenu,
                        ),
                        onPressed: () {
                          Get.to(() => const Materi1());
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: MediaQuery.of(context).size.height / 10,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )),
                        child: Text(
                          'Analisis Kependudukan dan Mobilitas Kependudukan',
                          style: stylemenu,
                        ),
                        onPressed: () {
                          Get.to(() => const Materi2());
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: MediaQuery.of(context).size.height / 10,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )),
                        child: Text(
                          'Bonus Demografi & permasalahan kependudukan di Indonesia',
                          style: stylemenu.copyWith(fontSize: 16),
                        ),
                        onPressed: () {
                          Get.to(() => const Materi3());
                        },
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
