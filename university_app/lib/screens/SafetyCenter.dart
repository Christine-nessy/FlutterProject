import 'package:flutter/material.dart';

void main() {
  runApp(SafetyCenterApp());
}

class SafetyCenterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafetyCenterPage(),
    );
  }
}

class SafetyCenterPage extends StatelessWidget {
  final List<SafetyCenter> safetyCenters = [
    SafetyCenter("Safety Center 1", "123 Main St, City, Country", "Phone: +1 (123) 456-7890"),
    SafetyCenter("Safety Center 2", "456 Elm St, Town, Country", "Phone: +1 (987) 654-3210"),
    SafetyCenter("Safety Center 3", "789 Oak St, Village, Country", "Phone: +1 (111) 222-3333"),
    // Add more safety centers here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Safety Centers'),
      ),
      body: ListView.builder(
        itemCount: safetyCenters.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(safetyCenters[index].name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(safetyCenters[index].address),
                Text(safetyCenters[index].contact),
              ],
            ),
          );
        },
      ),
    );
  }
}

class SafetyCenter {
  final String name;
  final String address;
  final String contact;

  SafetyCenter(this.name, this.address, this.contact);
}