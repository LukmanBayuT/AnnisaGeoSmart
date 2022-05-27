import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

class MateriAyuKp3 extends StatefulWidget {
  const MateriAyuKp3({Key? key}) : super(key: key);

  @override
  State<MateriAyuKp3> createState() => _MateriAyuKp3State();
}

class _MateriAyuKp3State extends State<MateriAyuKp3> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> myData = [
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/0.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/1.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/2.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/3.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/4.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/5.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/6.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/7.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/8.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/9.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/10.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/11.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/12.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/13.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/14.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/15.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/16.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/17.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/18.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/19.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/20.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/21.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/22.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/23.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/24.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/25.png'),
                fit: BoxFit.contain)),
      ),
    ),
    // InteractiveViewer(
    //   child: Container(
    //     decoration: const BoxDecoration(
    //         image: DecorationImage(
    //             image: AssetImage('assets/ayudm/materiayu/kp3/26.png'),
    //             fit: BoxFit.contain)),
    //   ),
    // ),
    SafeArea(
      child: Container(
        width: 600,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/26.png'),
                fit: BoxFit.contain)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 325,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  launchUrl(Uri.parse('https://www.youtube.com/watch?v=6-'));
                },
                child: const Text('Menuju Video'),
              ),
            ),
          ],
        ),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/27.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/28.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp3/29.png'),
                fit: BoxFit.contain)),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: myData.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.blueAccent)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
