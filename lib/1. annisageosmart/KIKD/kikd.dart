import 'package:annisageosmart/const/style.dart';
import 'package:flutter/material.dart';

class KIKDScreenAnnisa extends StatelessWidget {
  const KIKDScreenAnnisa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text(
                  'KI / KD',
                  style: styleTitle,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.height / 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Kompetensi Dasar :'),
                      Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Text('3.5'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                              'Menganalisis dinamika kependudukan di Indonesia untuk \nperencanaan pembangunan')
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Text('4.7'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                              'Menyajikan data kependudukan dalam bentuk peta, tabel, grafik, dan/atau gambar')
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Kompetensi Inti :'),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Text('1.'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                              'Menghayati dan mengamalkan ajaran agama yang dianutnya')
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('2.'),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: const Text(
                                'Mengembangkan perilaku dan menunjukkan sikap sebagai bagian dari solusi atas berbagai permasalahan bangsa dalam berinteraksi secara efektif dengan lingkungan sosial dan alam serta menempatkan diri sebagai cerminan bangsa dalam pergaulan dunia'),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('3.'),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: const Text(
                                'Memahami dan menerapkan pengetahuan faktual, konseptual, prosedural dalam ilmu pengetahuan, teknologi, seni, budaya, dan humaniora dengan wawasan kemanusiaan, kebangsaan, kenegaraan, dan peradaban terkait fenomena dan kejadian, serta menerapkan pengetahuan prosedural pada bidang kajian yang spesifik sesuai dengan bakat dan minatnya untuk memecahkan masalah'),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('4.'),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: const Text(
                                'Mengolah, menalar, dan menyaji dalam ranah konkret dan ranah abstrak terkait dengan pengembangan dari yang dipelajarinya di sekolah secara mandiri, dan mampu menggunakan metoda sesuai kaidah keilmuan'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
