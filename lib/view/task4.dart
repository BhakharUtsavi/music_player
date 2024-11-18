import 'package:flutter/material.dart';

class Task4 extends StatefulWidget {
  const Task4({super.key});

  @override
  State<Task4> createState() => _Task4State();
}

class _Task4State extends State<Task4> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Task 4"),
          bottom: TabBar(
            indicatorColor: Colors.purple,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 5,
            tabs: [
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
            ],
          ),
        ),
      ),
    );
  }
}
