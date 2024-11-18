import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Task 1"),
          bottom: TabBar(tabs: [
            Tab(
              text: "Andio",
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
