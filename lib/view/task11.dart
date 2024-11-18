import 'package:flutter/material.dart';

class Task11 extends StatefulWidget {
  const Task11({super.key});

  @override
  State<Task11> createState() => _Task11State();
}

class _Task11State extends State<Task11> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  bool _isLoggedIn = false;
  String _selectedCategory = 'Category 1';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  void _toggleLoginStatus() {
    setState(() {
      _isLoggedIn = !_isLoggedIn;
    });
  }

  void _changeCategory(String category) {
    setState(() {
      _selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 11"),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Home'),
            Tab(text: 'Profile'),
            Tab(text: 'Settings'),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: _toggleLoginStatus,
              child: Text(_isLoggedIn ? 'Logout' : 'Login'),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () => _changeCategory(_selectedCategory == 'Category 1' ? 'Category 2' : 'Category 1'),
              child: Text('Change Category'),
            ),
          ),

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
        ],
      ),
    );
  }

  Widget _buildHomeTab() {
    return Center(
        child: _isLoggedIn
        ? Text('Welcome back, User! You are logged in.')
        : Text('Please log in to view content.'),
    );
  }

  Widget _buildProfileTab() {
    return Center(
      child: _isLoggedIn
          ? Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('User Profile'),
          SizedBox(height: 10),
          Text('Category: $_selectedCategory'),
        ],
      )
          : Text('Please log in to view profile.'),
    );
  }

  Widget _buildSettingsTab() {
    return Center(
      child: _isLoggedIn
          ? Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Settings'),
          SizedBox(height: 10),
          Text('Selected Category: $_selectedCategory'),
        ],
      )
          : Text('Please log in to access settings.'),
    );
  }
}
