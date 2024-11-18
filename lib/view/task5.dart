import 'package:flutter/material.dart';

class Task5 extends StatefulWidget {
  const Task5({super.key});

  @override
  State<Task5> createState() => _Task5State();
}

class _Task5State extends State<Task5> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Task 5"),
          bottom: TabBar(
              isScrollable: true,
              tabs: [
            Tab(
              text: "Home",
              icon: Icon(Icons.home),
            ),
            Tab(
              text: "Profile",
              icon: Icon(Icons.person),
            ),
            Tab(
              text: "Settings",
              icon: Icon(Icons.settings),
            ),
            Tab(
              text: "Calls",
              icon: Icon(Icons.call),
            ),
            Tab(
              text: "Audio",
              icon: Icon(Icons.audiotrack),
            ),
            Tab(
              text: "Video",
              icon: Icon(Icons.video_camera_back),
            ),
            Tab(
              text: "Settings",
              icon: Icon(Icons.settings),
            ),
          ]),
        ),
      ),
    );
  }
}
