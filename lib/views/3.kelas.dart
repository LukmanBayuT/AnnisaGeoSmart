import 'package:annisageosmart/const/style.dart';
import 'package:annisageosmart/views/4.semester.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KelasMenu extends StatelessWidget {
  const KelasMenu({Key? key}) : super(key: key);

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
              width: MediaQuery.of(context).size.width / 2,
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
                  'Kelas X',
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
                  'Kelas XI',
                  style: stylemenu,
                ),
                onPressed: () {
                  Get.to(() => const SemesterMenu());
                },
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
                    primary: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                child: Text(
                  'Kelas XII',
                  style: stylemenu,
                ),
                onPressed: () {},
              ),
            ),
          ],
        )),
      ),
    );
  }
}
