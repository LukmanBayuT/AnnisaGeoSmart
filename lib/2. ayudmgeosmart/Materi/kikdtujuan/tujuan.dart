import 'package:flutter/material.dart';

class TujuanAyu extends StatelessWidget {
  const TujuanAyu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/ayudm/tujuan.png'),
                  fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
