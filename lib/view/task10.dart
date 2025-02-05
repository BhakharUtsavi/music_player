import 'package:flutter/material.dart';

class Task10 extends StatefulWidget {
  const Task10({super.key});

  @override
  State<Task10> createState() => _Task10State();
}

class _Task10State extends State<Task10> {
  int _selectedIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Icon(Icons.arrow_back,color: Colors.white,),
        centerTitle: true,
        title: Text("Task 10",style: TextStyle(color: Colors.white,fontSize: 20),),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          CustomTabBar(
            selectedIndex: _selectedIndex,
            onTabSelected: _onTabSelected,
          ),
          Expanded(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: _getTabContent(_selectedIndex),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getTabContent(int index) {
    switch (index) {
      case 0:
        return Center(
            child: Text("Tab 1 Content", style: TextStyle(fontSize: 24)));
      case 1:
        return Center(
            child: Text("Tab 2 Content", style: TextStyle(fontSize: 24)));
      case 2:
        return Center(
            child: Text("Tab 3 Content", style: TextStyle(fontSize: 24)));
      default:
        return Center(
            child: Text("Tab 1 Content", style: TextStyle(fontSize: 24)));
    }
  }
}

class CustomTabBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabSelected;

  CustomTabBar({required this.selectedIndex, required this.onTabSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return CustomTab(
          index: index,
          isSelected: selectedIndex == index,
          onTap: () => onTabSelected(index),
        );
      }),
    );
  }
}

class CustomTab extends StatelessWidget {
  final int index;
  final bool isSelected;
  final VoidCallback onTap;

  CustomTab({required this.index, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: isSelected ? Colors.teal : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(30),
          boxShadow: isSelected
              ? [BoxShadow(color: Colors.teal.shade200, spreadRadius: 2, blurRadius: 5)]
              : [],
        ),
        child: Center(
          child: Text(
            'Tab ${index + 1}',
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}