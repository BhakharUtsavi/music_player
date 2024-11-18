import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> with SingleTickerProviderStateMixin{

 late TabController controller;

  @override
  void initState() {
    controller=TabController(length: 3,vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 3"),
        centerTitle: true,
        bottom: TabBar(
          controller: controller,
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
        ],),
      ),
      body: TabBarView(
          controller: controller,
          children: [
        Center(child: Text("Andio"),),
        Center(child: Text("Video"),),
        Center(child: Text("Settings"),),
      ]),
    );
  }
}
