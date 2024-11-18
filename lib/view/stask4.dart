import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class STask4 extends StatefulWidget {
  const STask4({super.key});

  @override
  State<STask4> createState() => _STask4State();
}

class _STask4State extends State<STask4> {

  List<String> imageUrls = [
    "https://c.saavncdn.com/504/Tainu-Khabar-Nahi-From-Munjya-Hindi-2024-20240601193522-500x500.jpg",
    "https://img.wynk.in/unsafe/200x200/filters:no_upscale():strip_exif():format(jpg)/http://s3.ap-south-1.amazonaws.com/wynk-music-cms/srch_zeemusic/2024-06/06/08-59/ZMC08401.jpg",
    "https://c.saavncdn.com/009/Munjya-Hindi-2024-20240617102525-500x500.jpg",
  ];
  String selectedAnimation = 'Slide';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 4"),
        centerTitle: true,
      ),
      body: Center(
        child: CarouselSlider.builder(
          itemCount: imageUrls.length,
          options: CarouselOptions(
            height: 400,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            viewportFraction: 0.8,
          ),
          itemBuilder: (context, index, realIndex) {
            final imageUrl = imageUrls[index];
            return ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            );
          },
        ),
      ),
    );
  }
}
