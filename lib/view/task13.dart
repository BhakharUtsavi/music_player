import 'package:flutter/material.dart';

class Task13 extends StatefulWidget {
  const Task13({super.key});

  @override
  State<Task13> createState() => _Task13State();
}

class _Task13State extends State<Task13> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final _formKeyTab1 = GlobalKey<FormState>();
  final _formKeyTab2 = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  bool _validateTab1() {
    if (_formKeyTab1.currentState?.validate() ?? false) {
      return true;
    }
    return false;
  }

  bool _validateTab2() {
    if (_formKeyTab2.currentState?.validate() ?? false) {
      return true;
    }
    return false;
  }

  void _submitForm() {
    if (_validateTab1() && _validateTab2()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Form Submitted Successfully!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 13"),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Personal Info'),
            Tab(text: 'Additional Info'),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKeyTab1,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _nameController,
                          decoration: InputDecoration(labelText: 'Name'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(labelText: 'Email'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            } else if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA0-9.-]+\.[a-zA-Z]{2,}$").hasMatch(value)) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_validateTab1()) {
                              _tabController.animateTo(1); // Switch to next tab
                            }
                          },
                          child: Text('Next'),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKeyTab2,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _ageController,
                          decoration: InputDecoration(labelText: 'Age'),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your age';
                            } else if (int.tryParse(value) == null) {
                              return 'Please enter a valid number';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: _addressController,
                          decoration: InputDecoration(labelText: 'Address'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your address';
                            }
                            return null;
                          },
                        ),
                        ElevatedButton(
                          onPressed: _submitForm,
                          child: Text('Submit'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
