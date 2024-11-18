import 'package:flutter/material.dart';

class Task9 extends StatefulWidget {
  const Task9({super.key});

  @override
  State<Task9> createState() => _Task9State();
}

class _Task9State extends State<Task9> with SingleTickerProviderStateMixin {

  late TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  void _onBottomNavItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _tabController.index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task9"),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: "Tab 1"),
            Tab(text: "Tab 2"),
            Tab(text: "Tab 3"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text("Content of Tab 1")),
          Center(child: Text("Content of Tab 2")),
          Center(child: Text("Content of Tab 3")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onBottomNavItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
