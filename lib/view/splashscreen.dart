import 'dart:async';

import 'package:flutter/material.dart';
import 'package:music_player_app/view/homepage.dart';

class SplashCcreen extends StatefulWidget {
  const SplashCcreen({super.key});

  @override
  State<SplashCcreen> createState() => _SplashCcreenState();
}

class _SplashCcreenState extends State<SplashCcreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomePage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: CircleAvatar(
        radius: 60,
        backgroundImage: NetworkImage(
            "https://img.freepik.com/free-vector/music-emoji-illustration_23-2151345557.jpg"),
      )),
    );
  }
}
