import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class STask8 extends StatefulWidget {
  const STask8({super.key});

  @override
  State<STask8> createState() => _STask8State();
}

class _STask8State extends State<STask8> {
  List<String> imageUrls = [
    "https://c.saavncdn.com/504/Tainu-Khabar-Nahi-From-Munjya-Hindi-2024-20240601193522-500x500.jpg",
    "https://img.wynk.in/unsafe/200x200/filters:no_upscale():strip_exif():format(jpg)/http://s3.ap-south-1.amazonaws.com/wynk-music-cms/srch_zeemusic/2024-06/06/08-59/ZMC08401.jpg",
    "https://c.saavncdn.com/009/Munjya-Hindi-2024-20240617102525-500x500.jpg",
  ];

  int _currentIndex = 0;
  late double _progress;  // Progress to update the LinearProgressIndicator

  CarouselSliderController _carouselController = CarouselSliderController();

  @override
  void initState() {
    super.initState();
    _progress = 0;  // Initial progress
  }

  void _onPageChanged(int index, CarouselPageChangedReason reason) {
    setState(() {
      _currentIndex = index;
      _progress = (_currentIndex + 1) / imageUrls.length;  // Update progress
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel with Progress Indicator'),
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
            carouselController: _carouselController,
            options: CarouselOptions(
              height: 300,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.easeInOut,
              onPageChanged: _onPageChanged,  // Update progress when page changes
            ),
          ),

          // Progress Indicator
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: LinearProgressIndicator(
              value: _progress,  // Display the current progress
              minHeight: 5,
              backgroundColor: Colors.grey[300],
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
