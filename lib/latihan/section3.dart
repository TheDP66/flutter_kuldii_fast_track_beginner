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
        body: Column(
          children: [
            Container(
              height: 90,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) {
                  if (index % 2 == 0) {
                    return Container(
                      margin: const EdgeInsets.only(left: 10),
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                    );
                  } else {
                    return Container(
                      margin: const EdgeInsets.only(left: 10),
                      width: 50,
                      height: 50,
                      color: Colors.yellow,
                    );
                  }
                },
              ),
            ),
          ],
        ));
  }
}
