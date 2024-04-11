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
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 50,
        itemBuilder: (context, index) {
          if (index % 2 != 0) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    color: Colors.amber,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "HELLO ${index + 1}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "HELLO ${index + 1}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
