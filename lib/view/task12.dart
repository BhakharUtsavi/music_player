import 'package:flutter/material.dart';

class Task12 extends StatefulWidget {
  const Task12({super.key});

  @override
  State<Task12> createState() => _Task12State();
}

class _Task12State extends State<Task12> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _sections = ['Home', 'Profile', 'Settings'];
  String _selectedSection = 'Home';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  void _onSelectSection(String section) {
    setState(() {
      _selectedSection = section;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 12"),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Home'),
            Tab(text: 'Profile'),
            Tab(text: 'Settings'),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Navigation',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ..._sections.map((section) {
              return ListTile(
                title: Text(section),
                onTap: () => _onSelectSection(section),
              );
            }).toList(),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildHomeTab(),
                _buildProfileTab(),
                _buildSettingsTab(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Selected Section: $_selectedSection',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHomeTab() {
    return Center(
      child: Text('Home Tab Content', style: TextStyle(fontSize: 24)),
    );
  }

  Widget _buildProfileTab() {
    return Center(
      child: Text('Profile Tab Content', style: TextStyle(fontSize: 24)),
    );
  }

  Widget _buildSettingsTab() {
    return Center(
      child: Text('Settings Tab Content', style: TextStyle(fontSize: 24)),
    );
  }
}
