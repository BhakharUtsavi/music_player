import 'package:flutter/material.dart';
import 'package:music_player_app/utils/global.dart';

class Task7 extends StatefulWidget {
  const Task7({super.key});

  @override
  State<Task7> createState() => _Task7State();
}

class _Task7State extends State<Task7> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Task 7"),
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
            Tab(
              text: "Profile",
              icon: Icon(Icons.person),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Tab1(),
          Tab2(),
          Tab3(),
          Tab4(),
        ]),
      ),
    );
  }
}

class Tab1 extends StatefulWidget {
  const Tab1({super.key});

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: mediaPlayers.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(mediaPlayers[index]),
            );
          }),
    );
  }
}

class Tab2 extends StatefulWidget {
  const Tab2({super.key});

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: mediaPlayers
            .map((e) => Card(
                  child: Text(e),
                ))
            .toList(),
      ),
    );
  }
}

class Tab3 extends StatefulWidget {
  const Tab3({super.key});

  @override
  State<Tab3> createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: mediaPlayers
              .map((e) => ListTile(
            title: Text(e),
          ))
              .toList(),
        ),
      ),
    );
  }
}

class Tab4 extends StatefulWidget {
  const Tab4({super.key});

  @override
  State<Tab4> createState() => _Tab4State();
}

class _Tab4State extends State<Tab4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Stack(
        children:mediaPlayers.map((e){return ListTile(title: Text(e),);}).toList(),
      ) ,
    );
  }
}
