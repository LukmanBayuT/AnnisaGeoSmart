import 'package:annisageosmart/const/style.dart';
import 'package:annisageosmart/views/5.1%20materi_kelas_x.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Kelas10Semester extends StatelessWidget {
  const Kelas10Semester({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg/bg.png'), fit: BoxFit.cover)),
        child: Center(
            child: Column(
          children: [
            Image.asset(
              'assets/icontitle/Kelas.png',
              width: MediaQuery.of(context).size.width / 1.5,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 10,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                child: Text(
                  'Semester Ganjil',
                  style: stylemenu,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 10,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                )),
                child: Text(
                  'Semester Genap',
                  style: stylemenu,
                ),
                onPressed: () {
                  Get.to(() => const MateriKelas10());
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
