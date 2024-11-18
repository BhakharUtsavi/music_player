import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../utils/global.dart';

class STask3 extends StatefulWidget {
  const STask3({super.key});

  @override
  State<STask3> createState() => _STask3State();
}

class _STask3State extends State<STask3> {
  int cIndex=0;
  List<String> images = [
      "https://c.saavncdn.com/504/Tainu-Khabar-Nahi-From-Munjya-Hindi-2024-20240601193522-500x500.jpg",
  "https://img.wynk.in/unsafe/200x200/filters:no_upscale():strip_exif():format(jpg)/http://s3.ap-south-1.amazonaws.com/wynk-music-cms/srch_zeemusic/2024-06/06/08-59/ZMC08401.jpg",
    "https://c.saavncdn.com/009/Munjya-Hindi-2024-20240617102525-500x500.jpg",
  ];
  String selectedAnimation = 'Slide';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task 3'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Transition Effect: '),
                DropdownButton<String>(
                  value: selectedAnimation,
                  items: ['Slide', 'Fade', 'Zoom']
                      .map((animation) => DropdownMenuItem(
                    value: animation,
                    child: Text(animation),
                  ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedAnimation = value!;
                    });
                  },
                ),
              ],
            ),
          ),

          Expanded(
            child: CarouselSlider.builder(
              itemCount: images.length,
              options: CarouselOptions(
                height: 400,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayCurve: Curves.easeInOut,
                viewportFraction: 0.8,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 100),
                pageSnapping: true,
                scrollPhysics: BouncingScrollPhysics(),
              ),
              itemBuilder: (context, index, realIndex) {
                final image = images[index];
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 100),
                  transitionBuilder: (child, animation) {
                    switch (selectedAnimation) {
                      case 'Fade':
                        return FadeTransition(opacity: animation, child: child);
                      case 'Zoom':
                        return ScaleTransition(scale: animation, child: child);
                      default:
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: Offset(1.0, 0.0),
                            end: Offset.zero,
                          ).animate(animation),
                          child: child,
                        );
                    }
                  },
                  child: Container(
                    key: ValueKey(image),
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: NetworkImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
