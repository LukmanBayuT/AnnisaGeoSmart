import 'package:annisageosmart/1.%20annisageosmart/annisageosmart.dart';
import 'package:annisageosmart/const/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MateriMenu extends StatelessWidget {
  const MateriMenu({Key? key}) : super(key: key);

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
              'assets/icontitle/Materi.png',
              width: MediaQuery.of(context).size.width / 2,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 10,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                )),
                child: Text(
                  'Dinamika Kependudukan Indonesia',
                  style: stylemenu,
                ),
                onPressed: () {
                  Get.to(() => const AnnisaMateri());
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 10,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                child: Text(
                  'Keberagaman Kebudayaan Indonesia',
                  style: stylemenu,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 10,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                child: Text(
                  'Mitigasi Bencana Alam',
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
