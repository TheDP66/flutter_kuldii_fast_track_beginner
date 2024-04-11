import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Jawaban(),
    );
  }
}

class Jawaban extends StatelessWidget {
  const Jawaban({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("v3.7"),
        leading: const FlutterLogo(),
        leadingWidth: 30,
        actions: const [Icon(Icons.more_vert)],
      ),
      body: GridView.builder(
        itemCount: 50,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          if (index % 2 != 0) {
            return Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              child: const Center(
                child: Text(
                  "HELLO",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            );
          } else {
            return Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "HELLO",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
