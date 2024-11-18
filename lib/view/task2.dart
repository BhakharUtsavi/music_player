import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {

  final List<Map<String, dynamic>> categories = [
    {'title': 'Category 1', 'content': 'Content for Category 1'},
    {'title': 'Category 2', 'content': 'Content for Category 2'},
    {'title': 'Category 3', 'content': 'Content for Category 3'},
    {'title': 'Category 4', 'content': 'Content for Category 4'},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Task 2"),
          bottom: TabBar(
              tabs: categories.map((e) => Tab(text: e['title'])).toList(),
          ),
        ),
        body: TabBarView(children:
          categories.map((e){
            return Center(
              child:Text(e['content'],style: TextStyle(fontSize: 20),),
            );
          }).toList(),
        ),
      ),
    );
  }
}
