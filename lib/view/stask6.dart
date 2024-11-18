import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class STask6 extends StatefulWidget {
  const STask6({super.key});

  @override
  State<STask6> createState() => _STask6State();
}

class _STask6State extends State<STask6> {

  List<String> imageUrls = [
    "https://c.saavncdn.com/504/Tainu-Khabar-Nahi-From-Munjya-Hindi-2024-20240601193522-500x500.jpg",
    "https://img.wynk.in/unsafe/200x200/filters:no_upscale():strip_exif():format(jpg)/http://s3.ap-south-1.amazonaws.com/wynk-music-cms/srch_zeemusic/2024-06/06/08-59/ZMC08401.jpg",
    "https://c.saavncdn.com/009/Munjya-Hindi-2024-20240617102525-500x500.jpg",
  ];

  int _currentIndex = 0;

  final CarouselSliderController _carouselController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 6'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
            carouselController: _carouselController,
            options: CarouselOptions(
              height: 300,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageUrls.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () {
                  _carouselController.animateToPage(entry.key);
                },
                child: Container(
                  width: 80,
                  height: 80,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _currentIndex == entry.key
                          ? Colors.blue
                          : Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.network(
                      entry.value,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
