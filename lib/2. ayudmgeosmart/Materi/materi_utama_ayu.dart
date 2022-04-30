import 'package:annisageosmart/2.%20ayudmgeosmart/Materi/materi_ayu_kp_1.dart';
import 'package:annisageosmart/2.%20ayudmgeosmart/Materi/materi_ayu_kp_2.dart';
import 'package:annisageosmart/2.%20ayudmgeosmart/Materi/materi_ayu_kp_3.dart';
import 'package:annisageosmart/2.%20ayudmgeosmart/Materi/materi_ayu_kp_4.dart';
import 'package:annisageosmart/const/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MateriUtamaAyu extends StatefulWidget {
  const MateriUtamaAyu({Key? key}) : super(key: key);

  @override
  State<MateriUtamaAyu> createState() => _MateriUtamaAyuState();
}

class _MateriUtamaAyuState extends State<MateriUtamaAyu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/bg.jpg'), fit: BoxFit.cover)),
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
                        'Lapisan Atmosfer',
                        style: stylemenu,
                      ),
                      onPressed: () {
                        Get.to(() => const MateriAyuKp1());
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
                        'Unsur Cuaca dan Iklim',
                        style: stylemenu,
                      ),
                      onPressed: () {
                        Get.to(() => const MateriAyuKp2());
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
                        'Klasifikasi Iklim',
                        style: stylemenu.copyWith(fontSize: 16),
                      ),
                      onPressed: () {
                        Get.to(() => const MateriAyuKp3());
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
                        'Karakteristik Iklim di Indonesia',
                        style: stylemenu.copyWith(fontSize: 16),
                      ),
                      onPressed: () {
                        Get.to(() => const MateriAyuKp4());
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
