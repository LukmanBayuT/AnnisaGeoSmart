import 'package:annisageosmart/const/style.dart';
import 'package:flutter/foundation.dart';
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
                            ? Get.off(() => Soal2Annisa())
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
          Get.to(() => Soal2Annisa());
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
  Soal2Annisa({Key? key}) : super(key: key);

  bool _isSalah = false;

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
                onTap: () {
                  _isSalah = true;
                  if (kDebugMode) {
                    print('tertekan');
                  }
                },
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
                onTap: () {
                  Get.to(() => const Soal3Annisa());
                },
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
          ),
          const SizedBox(
            height: 10,
          ),
          (_isSalah == true)
              ? const Text('Jawabannya adalah "Benar"')
              : Container()
        ],
      )),
    );
  }
}

class Soal3Annisa extends StatelessWidget {
  const Soal3Annisa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 2,
            child: Center(
              child: Text(
                '1. Jumlah penduduk yang tercatat adalah jumlah riil di suatu tempat. \n 2. Dilakukan secara serempak di setiap daerah sehingga data cepat terkumpul dan lebih cepat diolah. \n 3. Data yang diperoleh dapat digunakan untuk kepentingan perencanaan yang berkaitan dengan layanan publik. \n Kelebihan-kelebihan tersebut adalah kelebihan yang ditunjukkan pada … ',
                textAlign: TextAlign.left,
                style: styleTitle.copyWith(
                    fontWeight: FontWeight.w400, fontSize: 16),
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
                onTap: () {
                  Get.to(() => const Soal4Annisa());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: Center(
                      child: Text(
                    'SENSUS DE FACTO',
                    style:
                        styleTitle.copyWith(color: Colors.white, fontSize: 20),
                  )),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const Soal3AnnisaSalah());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: Center(
                      child: Text(
                    'SENSUS DE JURE',
                    style:
                        styleTitle.copyWith(color: Colors.white, fontSize: 20),
                  )),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

class Soal3AnnisaSalah extends StatelessWidget {
  const Soal3AnnisaSalah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Get.to(() => const Soal4Annisa());
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/ruparupa/2_soal.png'))),
        ),
      ),
    );
  }
}

class Soal4Annisa extends StatelessWidget {
  const Soal4Annisa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 4,
            child: Center(
              child: Text(
                'Pada arus balik lebaran tahun 2013 wilayah DKI Jakarta mengalami penambahan penduduk sebanyak lebih kurang 26.000 jiwa. Faktor yang berpengaruh terhadap dinamika penduduk adalah ....',
                textAlign: TextAlign.left,
                style: styleTitle.copyWith(
                    fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const Soal4AnnisaSalah());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green),
                      child: Center(
                          child: Text(
                        'Kematian penduduk',
                        style: styleTitle.copyWith(
                            color: Colors.white, fontSize: 20),
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const Soal4AnnisaSalah());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green),
                      child: Center(
                          child: Text(
                        'Pusat Pemerintahan',
                        style: styleTitle.copyWith(
                            color: Colors.white, fontSize: 20),
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const Soal5Annisa());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green),
                      child: Center(
                          child: Text(
                        'Migrasi penduduk',
                        style: styleTitle.copyWith(
                            color: Colors.white, fontSize: 20),
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const Soal4AnnisaSalah());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green),
                      child: Center(
                          child: Text(
                        'Kelahiran penduduk',
                        style: styleTitle.copyWith(
                            color: Colors.white, fontSize: 20),
                      )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      )),
    );
  }
}

class Soal4AnnisaSalah extends StatelessWidget {
  const Soal4AnnisaSalah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Get.to(() => const Soal5Annisa());
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/ruparupa/3_soal.png'))),
        ),
      ),
    );
  }
}

class Soal5Annisa extends StatelessWidget {
  const Soal5Annisa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 4,
            child: Center(
              child: Row(
                children: [
                  Image.asset('assets/ruparupa/4_soal_gambar.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Pada gambar disamping mengisyaratan …',
                    textAlign: TextAlign.left,
                    style: styleTitle.copyWith(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => Soal6Annisa());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Akan ada pola pengembangan penggunaan lahan dimana sebaran permukiman dapat dimungkinkan bertambah',
                      style: styleTitle.copyWith(
                          color: Colors.white, fontSize: 14),
                    ),
                  )),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const Soal5AnnisaSalah());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Dari gambar dapat dilihat lokasi permukiman yang beriringan dengan lokasi pertanian yang mengindikasikan penduduk berprofesi sebagai petani',
                      style: styleTitle.copyWith(
                          color: Colors.white, fontSize: 14),
                    ),
                  )),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

class Soal5AnnisaSalah extends StatelessWidget {
  const Soal5AnnisaSalah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GestureDetector(
              onTap: () {
                Get.to(() => Soal6Annisa());
              },
              child: Image.asset('assets/ruparupa/4_soal.png'))),
    );
  }
}

class Soal6Annisa extends StatelessWidget {
  Soal6Annisa({Key? key}) : super(key: key);

  final TextEditingController _soal6cont = TextEditingController();

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
                    'Jika penduduk Kabupaten Karanganyar yang berjumlah 2.339.000 jiwa itu diketahui bahwa jumlah penduduk yang belum produktif sebanyak 750.000 jiwa dan yang sudah tidak produktif berjumlah 500.000 jiwa. Sisanya merupakan penduduk produktif. Dengan demikian angka ketergantungan (dependency ratio) Kabupaten Karanganyar adalah …',
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
                      controller: _soal6cont,
                      decoration: const InputDecoration(
                          labelText: 'jawaban dengan angka ya!'),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        (_soal6cont.text == '114')
                            ? Get.off(() => Soal7Annisa())
                            : Get.off(() => const Soal6AnnisaSalah());
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

class Soal6AnnisaSalah extends StatelessWidget {
  const Soal6AnnisaSalah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GestureDetector(
              onTap: () {
                Get.to(() => Soal6Annisa());
              },
              child: Image.asset('assets/ruparupa/5_soal.png'))),
    );
  }
}

class Soal7Annisa extends StatelessWidget {
  const Soal7Annisa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
