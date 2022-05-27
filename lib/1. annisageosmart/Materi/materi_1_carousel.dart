import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Materi1Inti extends StatefulWidget {
  const Materi1Inti({Key? key}) : super(key: key);

  @override
  State<Materi1Inti> createState() => _Materi1IntiState();
}

class _Materi1IntiState extends State<Materi1Inti> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> myData = [
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/0.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/1.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/2.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/3.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/4.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/5.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/6.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/7.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/8.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/9.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/10.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/11.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/12.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/13.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/14.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/15.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/16.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/17.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/18.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/19.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/20.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/21.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/1/22.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/materi/2/0.png'),
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
