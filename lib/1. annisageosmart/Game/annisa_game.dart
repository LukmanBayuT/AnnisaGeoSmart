import 'package:annisageosmart/const/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnnisaGame extends StatefulWidget {
  const AnnisaGame({Key? key}) : super(key: key);

  @override
  State<AnnisaGame> createState() => _AnnisaGameState();
}

class _AnnisaGameState extends State<AnnisaGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.4,
              height: MediaQuery.of(context).size.height / 3,
              child: Center(
                child: Text(
                  'Game Uji Evaluasi',
                  style: styleTitle,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.4,
              height: MediaQuery.of(context).size.height / 3,
              child: Center(
                child: Text(
                  'Game ini akan menguji dan mengevaluasi kalian, harap perhatikan soal dengan teliti agar bisa menjawab yah!',
                  style: styleTitle.copyWith(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.4,
              height: MediaQuery.of(context).size.height / 3,
              child: Center(
                  child: ElevatedButton(
                child: const Text('Lanjut'),
                onPressed: () {
                  Get.to(() => Soal1());
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}

class Soal1 extends StatelessWidget {
  Soal1({Key? key}) : super(key: key);

  final TextEditingController _soal1cont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                height: MediaQuery.of(context).size.height / 3,
                child: Center(
                  child: Text(
                    'Jika suatu wilayah memiliki jumlah penduduk perempuan sebanyak 5.500 jiwa dan penduduk laki-laki sebanyak 5.000 jiwa, angka sex ratio di wilayah tersebut adalah …. ',
                    textAlign: TextAlign.center,
                    style: styleTitle.copyWith(
                        fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextFormField(
                      controller: _soal1cont,
                      decoration: const InputDecoration(
                          labelText: 'jawaban dengan angka ya!'),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        (_soal1cont.text == '110')
                            ? Get.off(() => const Soal2Annisa())
                            : Get.off(() => const Soal1Salah());
                      },
                      child: const Text('Jawab!'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Soal1Salah extends StatelessWidget {
  const Soal1Salah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Get.to(() => const Soal2Annisa());
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/ruparupa/1_soal.png'))),
        ),
      ),
    );
  }
}

class Soal2Annisa extends StatelessWidget {
  const Soal2Annisa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 3,
            child: Center(
              child: Text(
                'Nilai Dependdency Ratio 56 berarti terdapat 56 penduduk usia produktif diantara 100 penduduk non-produktif. Pernyataan tersebut adalah...',
                textAlign: TextAlign.center,
                style: styleTitle.copyWith(
                    fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red),
                  child: Center(
                      child: Text(
                    'Salah',
                    style: styleTitle.copyWith(color: Colors.white),
                  )),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: Center(
                      child: Text(
                    'Benar',
                    style: styleTitle.copyWith(color: Colors.white),
                  )),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
