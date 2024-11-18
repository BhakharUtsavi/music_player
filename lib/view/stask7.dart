import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class STask7 extends StatefulWidget {
  const STask7({super.key});

  @override
  State<STask7> createState() => _STask7State();
}

class _STask7State extends State<STask7> {

  List<String> imageUrls = [
    "https://c.saavncdn.com/504/Tainu-Khabar-Nahi-From-Munjya-Hindi-2024-20240601193522-500x500.jpg",
    "https://img.wynk.in/unsafe/200x200/filters:no_upscale():strip_exif():format(jpg)/http://s3.ap-south-1.amazonaws.com/wynk-music-cms/srch_zeemusic/2024-06/06/08-59/ZMC08401.jpg",
    "https://c.saavncdn.com/009/Munjya-Hindi-2024-20240617102525-500x500.jpg",
  ];

  int _currentIndex = 0;

  CarouselSliderController _carouselController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 7'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // CarouselSlider
          CarouselSlider(
            items: imageUrls
                .map((url) => ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                url,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ))
                .toList(),
            carouselController: _carouselController, // This works now
            options: CarouselOptions(
              height: 300,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.easeInOut,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              scrollPhysics: BouncingScrollPhysics(),
              enableInfiniteScroll: true, // Looping enabled
            ),
          ),
          const SizedBox(height: 20),

          // Custom Indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageUrls.asMap().entries.map((entry) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == entry.key
                      ? Colors.blue
                      : Colors.grey,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
