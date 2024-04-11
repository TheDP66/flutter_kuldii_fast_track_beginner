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
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: 100,
              height: 100,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "HELLO",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              child: const Center(
                child: Text(
                  "HELLO",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: 100,
              height: 100,
              color: Colors.amber,
              child: const Center(
                child: Text(
                  "HELLO",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "HELLO",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
