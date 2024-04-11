import 'package:Instagram_Clone/section6/pages/Profile.dart';
import 'package:Instagram_Clone/section6/pages/Home.dart';
import 'package:Instagram_Clone/section6/pages/discover.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  final faker = Faker();

  String tanggal = DateTime.now().toIso8601String();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      HomePage(faker: faker, tanggal: tanggal),
      DiscoverPage(),
      const Center(child: Text("MENU ke 3")),
      const Center(child: Text("MENU ke 4")),
      ProfilePage(faker: faker),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Section 6"),
      ),
      body: widgets[currentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.lightBlue,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: 0,
        onTap: (int i) {
          setState(() {
            currentIndex = i;
          });
        },
      ),
    );
  }
}
