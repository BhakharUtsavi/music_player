import 'package:flutter/material.dart';
import 'package:music_player_app/view/videoview.dart';
import 'audioview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller =
        TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerHeader(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("task1");
                  },
                  child: Text('Lec 1 task 1'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("task2");
                  },
                  child: Text('Lec 1 task 2'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("task3");
                  },
                  child: Text('Lec 1 task 3'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("task4");
                  },
                  child: Text('Lec 1 task 4'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("task5");
                  },
                  child: Text('Lec 1 task 5'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("task6");
                  },
                  child: Text('Lec 1 task 6'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("task7");
                  },
                  child: Text('Lec 1 task 7'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("task8");
                  },
                  child: Text('Lec 1 task 8'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("task9");
                  },
                  child: Text('Lec 1 task 9'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("task10");
                  },
                  child: Text('Lec 1 task 10'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("task11");
                  },
                  child: Text('Lec 1 task 11'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("task12");
                  },
                  child: Text('Lec 1 task 12'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("task13");
                  },
                  child: Text('Lec 1 task 13'),
                ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("stask1");
            },
            child: Text('Lec 2 task 1'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("stask2");
            },
            child: Text('Lec 2 task 2'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("stask3");
            },
            child: Text('Lec 2 task 3'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("stask4");
            },
            child: Text('Lec 2 task 4'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("stask5");
            },
            child: Text('Lec 2 task 5'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("stask6");
            },
            child: Text('Lec 2 task 6'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("stask7");
            },
            child: Text('Lec 2 task 7'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("stask8");
            },
            child: Text('Lec 2 task 8'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("stask9");
            },
            child: Text('Lec 2 task 9'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("stask10");
            },
            child: Text('Lec 2 task 10'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("ttask1");
            },
            child: Text('Lec 3 task 1'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("ttask2");
            },
            child: Text('Lec 3 task 2'),),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        bottom: TabBar(
          controller: controller,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Colors.white,
          tabs: [
            Tab(
              //child: Text("Audio"),
              text: "Audio",
              icon: Icon(Icons.audiotrack,),
            ),
            Tab(
              text: "Video",
              icon: Icon(Icons.video_camera_back),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          AudioView(),
          VideoView(),
        ],
      ),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     FloatingActionButton(
      //         child: Icon(Icons.arrow_back_ios),
      //         onPressed: (){
      //       controller.index = 0;
      //     }),
      //     SizedBox(width: 50,),
      //     FloatingActionButton(
      //         child: Icon(Icons.arrow_forward_ios),
      //         onPressed: (){
      //           controller.index = 1;
      //         }),
      //   ],
      // ),
    );
  }
}
