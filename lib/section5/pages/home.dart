import 'package:Instagram_Clone/section5/widgets/summary_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Summary"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SummaryItem("CONFIRMED", "4738234"),
          SummaryItem("DEATHS", '3571342'),
        ],
      ),
    );
  }
}
