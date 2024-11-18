import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../utils/global.dart';

class STask2 extends StatefulWidget {
  const STask2({super.key});

  @override
  State<STask2> createState() => _STask2State();
}

class _STask2State extends State<STask2> {

  List<Map<String,dynamic>> images = [
    {
      "title": "Tainu Khabar Nahi - From Munjya",
      "description": "Sachin-Jigar,Arijit Singh",
      "image":"https://c.saavncdn.com/504/Tainu-Khabar-Nahi-From-Munjya-Hindi-2024-20240601193522-500x500.jpg"
    },
    {
      "title": "Hai Jamalo - From Munjya",
      "artist": "Sachin-Jigar,Arijit Singh",
      "image": "https://img.wynk.in/unsafe/200x200/filters:no_upscale():strip_exif():format(jpg)/http://s3.ap-south-1.amazonaws.com/wynk-music-cms/srch_zeemusic/2024-06/06/08-59/ZMC08401.jpg"
    },

    {
      "title": "Tum Se Mil Ke - From Munjya",
      "artist": "Sachin-Jigar,Skeletron",
      "image": "https://c.saavncdn.com/009/Munjya-Hindi-2024-20240617102525-500x500.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Task 2')),
      body: Center(
        child: CarouselSlider.builder(
          itemCount: images.length,
          options: CarouselOptions(
            height: 400,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            viewportFraction: 0.8,
          ),
          itemBuilder: (context, index, realIndex) {
            final image = images[index];
            return GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('detail', arguments: {
                  'title': image['title'],
                  'description': image['description'],
                  'imageUrl': image['image'],
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  image['image']!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
