import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

class MateriAyuKp1 extends StatefulWidget {
  const MateriAyuKp1({Key? key}) : super(key: key);

  @override
  State<MateriAyuKp1> createState() => _MateriAyuKp1State();
}

class _MateriAyuKp1State extends State<MateriAyuKp1> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  void _launchUrl() async {
    if (!await launchUrl(
        Uri.parse('https://www.youtube.com/watch?v=zBhVs5BIs_4'))) {
      throw 'Could not launch';
    }
  }

  final List<Widget> myData = [
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp1/0.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp1/1.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp1/2.png'),
                fit: BoxFit.contain)),
      ),
    ),
    SafeArea(
      child: Container(
        width: 600,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp1/3.png'),
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
                  launchUrl(
                      Uri.parse('https://www.youtube.com/watch?v=zBhVs5BIs_4'));
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
                image: AssetImage('assets/ayudm/materiayu/kp1/4.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp1/5.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp1/6.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp1/7.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp1/8.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp1/9.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp1/10.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp1/11.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp1/12.png'),
                fit: BoxFit.contain)),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ayudm/materiayu/kp1/13.png'),
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
