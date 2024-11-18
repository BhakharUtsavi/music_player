import 'package:flutter/material.dart';

class Task8 extends StatefulWidget {
  const Task8({super.key});

  @override
  State<Task8> createState() => _Task8State();
}

class _Task8State extends State<Task8> {
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
        body: TabBarView(children: [
          Tab1(),
          Tab2(),
          Tab3(),
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

class _Tab1State extends State<Tab1> with AutomaticKeepAliveClientMixin {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // Don't forget to call super.build(context)!
    return Scaffold(
      appBar: AppBar(title: Text('Audio')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Audio Tab - Counter: $_counter'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
              child: Text('Increase Counter'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true; // Keep the state alive when switching tabs
}

class Tab2 extends StatefulWidget {
  const Tab2({super.key});

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> with AutomaticKeepAliveClientMixin {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(title: Text('Video')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Video Tab - Counter: $_counter'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
              child: Text('Increase Counter'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true; // Keep the state alive when switching tabs
}

class Tab3 extends StatefulWidget {
  const Tab3({super.key});

  @override
  State<Tab3> createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> with AutomaticKeepAliveClientMixin {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Settings Tab - Counter: $_counter'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
              child: Text('Increase Counter'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true; // Keep the state alive when switching tabs
}
