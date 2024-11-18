import 'package:flutter/material.dart';

class Task6 extends StatefulWidget {
  const Task6({super.key});

  @override
  State<Task6> createState() => _Task6State();
}

class _Task6State extends State<Task6> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Task 6"),
          bottom: TabBar(tabs: [
            Tab(
              text: "Andio",
              icon: Icon(Icons.audiotrack),
            ),
            Tab(
              text: "Video",
              icon: Icon(Icons.video_camera_back),
            ),
          ]),
        ),
        body: TabBarView(children: [
          AudioTabNavigator(),
          VideoTabNavigator(),
        ]),
      ),
    );
  }
}

class AudioTabNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AudioHome(),
      routes: {
        "audioDetail": (context) => AudioDetailScreen(),
      },
    );
  }
}

class VideoTabNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VideoHome(),
      routes: {
        "videoDetail": (context) => VideoDetailScreen(),
      },
    );
  }
}

class AudioHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Audio Home")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed("audioDetail");
          },
          child: Text("Go to Audio Detail"),
        ),
      ),
    );
  }
}

class VideoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Video Home")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed("videoDetail");
          },
          child: Text("Go to Video Detail"),
        ),
      ),
    );
  }
}

// Detail screen for the Audio tab
class AudioDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Audio Detail")),
      body: Center(
        child: Text("This is the Audio Detail Screen"),
      ),
    );
  }
}

// Detail screen for the Video tab
class VideoDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Video Detail")),
      body: Center(
        child: Text("This is the Video Detail Screen"),
      ),
    );
  }
}