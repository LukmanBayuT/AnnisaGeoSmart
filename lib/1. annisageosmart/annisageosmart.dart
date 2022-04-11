import 'package:annisageosmart/1.%20annisageosmart/Game/annisa_game.dart';
import 'package:annisageosmart/1.%20annisageosmart/KIKD/kikd.dart';
import 'package:annisageosmart/1.%20annisageosmart/Materi/materi.dart';
import 'package:annisageosmart/1.%20annisageosmart/Tujuan/tujuan.dart';
import 'package:annisageosmart/const/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnnisaMateri extends StatelessWidget {
  const AnnisaMateri({Key? key}) : super(key: key);

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
              const SizedBox(height: 20),
              Image.asset(
                'assets/icontitle/Dinamika.png',
                width: MediaQuery.of(context).size.width / 3,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.height / 10,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          )),
                          child: Text(
                            'KI / KD',
                            style: stylemenu,
                          ),
                          onPressed: () {
                            Get.to(() => const KIKDScreenAnnisa());
                          },
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 25,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.height / 10,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )),
                          child: Text(
                            'Tujuan',
                            style: stylemenu,
                          ),
                          onPressed: () {
                            Get.to(() => const TujuanScreenAnnisa());
                          },
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 25,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.height / 10,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )),
                          child: Text(
                            'Materi',
                            style: stylemenu,
                          ),
                          onPressed: () {
                            Get.to(() => const MateriScreenAnnisa());
                          },
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 25,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.height / 10,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )),
                          child: Text(
                            'Game',
                            style: stylemenu,
                          ),
                          onPressed: () {
                            Get.to(() => const AnnisaGame());
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/ruparupa/pointpoint.png'))),
                  ),
                  const SizedBox(
                    width: 50,
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
