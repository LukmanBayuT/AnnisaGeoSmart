import 'package:annisageosmart/views/2.%20mainmenu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

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
            child: GestureDetector(
          onTap: () {
            Get.to(() => const MainMenu());
          },
          child: Image.asset(
            'assets/icontitle/Smartgeo.png',
            width: MediaQuery.of(context).size.width / 1.5,
          ),
        )),
      ),
    );
  }
}
