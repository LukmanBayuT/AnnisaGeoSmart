import 'package:annisageosmart/const/style.dart';
import 'package:annisageosmart/views/3.kelas.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icontitle/Smartgeo.png',
              width: MediaQuery.of(context).size.width / 1.5,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
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
                  'Continue',
                  style: stylemenu,
                ),
                onPressed: () {
                  Get.to(() => const KelasMenu());
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
