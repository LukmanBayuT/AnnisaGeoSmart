import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Materi3Inti extends StatefulWidget {
  const Materi3Inti({Key? key}) : super(key: key);

  @override
  State<Materi3Inti> createState() => _Materi3IntiState();
}

class _Materi3IntiState extends State<Materi3Inti> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> myData = [
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/3/0.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/3/1.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/3/2.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/3/3.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/3/4.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/3/5.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/3/6.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/3/7.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/3/8.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/3/9.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/3/10.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/3/11.png'),
                fit: BoxFit.contain)),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: CarouselSlider(
          items: myData,
          options: CarouselOptions(
              reverse: false,
              enableInfiniteScroll: false,
              autoPlay: false,
              enlargeCenterPage: true,
              // aspectRatio: 0.7,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          carouselController: _controller,
        ),
      ),
    );
  }
}
