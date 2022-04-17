import 'package:annisageosmart/1.%20annisageosmart/annisageosmart.dart';
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
                            ? jawabanBenar(context)
                            : jawabanSalah(context);
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

  jawabanBenar(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Lanjut!"),
      onPressed: () {
        Get.off(() => Soal2Annisa());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Benar"),
      content: const Text("Lanjut Ke Soal Selanjutnya"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  jawabanSalah(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Baik!"),
      onPressed: () {
        Get.off(() => const Soal1Salah());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Salah"),
      content: const Text("Lanjut ke pembahasan"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
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
                  jawabanSalah(context);
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
                  jawabanBenar(context);
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

  jawabanBenar(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Lanjut!"),
      onPressed: () {
        Get.off(() => const Soal3Annisa());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Benar"),
      content: const Text("Lanjut Ke Soal Selanjutnya"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  jawabanSalah(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Baik!"),
      onPressed: () {
        Get.back();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Salah"),
      content: const Text("Pilih jawaban yang tepat!"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
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
                  jawabanBenar(context);
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
                  jawabanSalah(context);
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

  jawabanBenar(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Lanjut!"),
      onPressed: () {
        Get.off(() => const Soal4Annisa());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Benar"),
      content: const Text("Lanjut Ke Soal Selanjutnya"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  jawabanSalah(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Baik!"),
      onPressed: () {
        Get.off(() => const Soal3AnnisaSalah());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Salah"),
      content: const Text("Pilih jawaban yang tepat!"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
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
                      jawabanSalah(context);
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
                      jawabanSalah(context);
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
                      jawabanBenar(context);
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
                      jawabanSalah(context);
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

  jawabanBenar(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Lanjut!"),
      onPressed: () {
        Get.off(() => const Soal5Annisa());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Benar"),
      content: const Text("Lanjut Ke Soal Selanjutnya"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  jawabanSalah(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Baik!"),
      onPressed: () {
        Get.off(() => const Soal4AnnisaSalah());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Salah"),
      content: const Text("Pilih jawaban yang tepat!"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
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
                  jawabanBenar(context);
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
                  jawabanSalah(context);
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

  jawabanBenar(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Lanjut!"),
      onPressed: () {
        Get.off(() => Soal6Annisa());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Benar"),
      content: const Text("Lanjut Ke Soal Selanjutnya"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  jawabanSalah(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Baik!"),
      onPressed: () {
        Get.off(() => const Soal5AnnisaSalah());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Salah"),
      content: const Text("Pilih jawaban yang tepat!"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
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
                            ? jawabanBenar(context)
                            : jawabanSalah(context);
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

  jawabanBenar(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Lanjut!"),
      onPressed: () {
        Get.off(() => const Soal7Annisa());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Benar"),
      content: const Text("Lanjut Ke Soal Selanjutnya"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  jawabanSalah(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Baik!"),
      onPressed: () {
        Get.off(() => const Soal6AnnisaSalah());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Salah"),
      content: const Text("Pilih jawaban yang tepat!"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
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
                Get.to(() => const Soal7Annisa());
              },
              child: Image.asset('assets/ruparupa/5_soal.png'))),
    );
  }
}

class Soal7Annisa extends StatelessWidget {
  const Soal7Annisa({Key? key}) : super(key: key);

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
                '1. Ada keinginan dan kemampuan lebih untuk dapat bersaing di negeri sendiri\n2. Penghasilan lebih besar\n3. Memiliki fasilitas pendidikan yang baik untuk melanjutkan sekolah atau kuliah\n4. Lapangan kerja yang tersedia tidak cukup banyak \nFaktor penarik untuk melakukan emigrasi ditunjukkan oleh nomor 1 dan 3',
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
                  jawabanSalah(context);
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
                  jawabanBenar(context);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: Center(
                      child: Text(
                    'Salah',
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

  jawabanBenar(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Lanjut!"),
      onPressed: () {
        Get.off(() => const Soal8Annisa());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Benar"),
      content: const Text("Lanjut Ke Soal Selanjutnya"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  jawabanSalah(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Baik!"),
      onPressed: () {
        Get.off(() => const Soal7AnnisaSalah());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Salah"),
      content: const Text("Pilih jawaban yang tepat!"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

class Soal7AnnisaSalah extends StatelessWidget {
  const Soal7AnnisaSalah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GestureDetector(
              onTap: () {
                Get.to(() => const Soal8Annisa());
              },
              child: Image.asset('assets/ruparupa/6_soal.png'))),
    );
  }
}

class Soal8Annisa extends StatelessWidget {
  const Soal8Annisa({Key? key}) : super(key: key);

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
                'Di antara ciri-ciri piramida penduduk Indonesia adalah sebagian besar penduduknya berada pada kelompok usia muda dengan tingkat kelahiran dan kematian yang tinggi. Berdasarkan hal tersebut maka gambar piramida penduduknya berbentuk ….',
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
                      jawabanBenar(context);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green),
                      child: Center(
                          child: Text(
                        'Segitiga',
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
                      jawabanSalah(context);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green),
                      child: Center(
                          child: Text(
                        'Ketupat',
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
                      jawabanSalah(context);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green),
                      child: Center(
                          child: Text(
                        'Granat',
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
                      jawabanSalah(context);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green),
                      child: Center(
                          child: Text(
                        'Batu Nisan',
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

  jawabanBenar(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Lanjut!"),
      onPressed: () {
        Get.off(() => Soal9Annisa());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Benar"),
      content: const Text("Lanjut Ke Soal Selanjutnya"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  jawabanSalah(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Baik!"),
      onPressed: () {
        Get.off(() => const Soal8AnnisaSalah());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Salah"),
      content: const Text("Pilih jawaban yang tepat!"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

class Soal8AnnisaSalah extends StatelessWidget {
  const Soal8AnnisaSalah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GestureDetector(
              onTap: () {
                Get.to(() => Soal9Annisa());
              },
              child: Image.asset('assets/ruparupa/7_soal.png'))),
    );
  }
}

class Soal9Annisa extends StatelessWidget {
  Soal9Annisa({Key? key}) : super(key: key);

  final TextEditingController _soal9cont = TextEditingController();

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
                    'Desa Mojogedang pada pertengahan tahun 2019 berjumlah 10.500 jiwa. Jumlah kelahiran selama tahun 2019 sebanyak 123 jiwa. Jumlah bayi yang lahir kemudian meninggal seketika itu tercatat tiga jiwa. Berdasarkan data ini maka jumlah angka kelahiran kasar (crude birth rate) Desa Mojogedang pada tahun 2019 adalah ….',
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
                      controller: _soal9cont,
                      decoration: const InputDecoration(
                          labelText: 'jawaban dengan angka ya!'),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        (_soal9cont.text == '11')
                            ? jawabanBenar(context)
                            : jawabanSalah(context);
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

  jawabanBenar(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Lanjut!"),
      onPressed: () {
        Get.off(() => const Soal10Annisa());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Benar"),
      content: const Text("Lanjut Ke Soal Selanjutnya"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  jawabanSalah(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Baik!"),
      onPressed: () {
        Get.off(() => const Soal9AnnisaSalah());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Salah"),
      content: const Text("Pilih jawaban yang tepat!"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

class Soal9AnnisaSalah extends StatelessWidget {
  const Soal9AnnisaSalah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GestureDetector(
              onTap: () {
                Get.to(() => const Soal10Annisa());
              },
              child: Image.asset('assets/ruparupa/8_soal.png'))),
    );
  }
}

class Soal10Annisa extends StatelessWidget {
  const Soal10Annisa({Key? key}) : super(key: key);

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
                'Sensus penduduk yang pengisian datanya dilakukan oleh responden merupakan sensus dengan menggunakan metode householder',
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
                  jawabanBenar(context);
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
                  jawabanSalah(context);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: Center(
                      child: Text(
                    'Salah',
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

  jawabanBenar(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Lanjut!"),
      onPressed: () {
        Get.off(() => const FinalGame());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Benar"),
      content: const Text("Lanjut Ke Soal Selanjutnya"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  jawabanSalah(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Baik!"),
      onPressed: () {
        Get.back();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Jawaban Kamu Salah"),
      content: const Text("Pilih jawaban yang tepat!"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

class FinalGame extends StatelessWidget {
  const FinalGame({Key? key}) : super(key: key);

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
                'Jawabannya Adalah "Benar!"',
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
                  Get.offAll(() => const AnnisaMateri());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: Center(
                      child: Text(
                    'Kembali Ke Menu Utama',
                    style:
                        styleTitle.copyWith(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
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
