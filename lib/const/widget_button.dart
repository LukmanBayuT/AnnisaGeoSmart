import 'package:annisageosmart/const/style.dart';
import 'package:flutter/material.dart';

Widget tombolKelasX = SizedBox(
  width: 200,
  height: 300,
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    )),
    child: Text(
      'Kelas X',
      style: stylemenu,
    ),
    onPressed: () {},
  ),
);

Widget tombolKelasXI = SizedBox(
  width: 200,
  height: 300,
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    )),
    child: Text(
      'Kelas XI',
      style: stylemenu,
    ),
    onPressed: () {},
  ),
);

Widget tombolKelasXII = SizedBox(
  width: 200,
  height: 300,
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    )),
    child: Text(
      'Kelas XII',
      style: stylemenu,
    ),
    onPressed: () {},
  ),
);
