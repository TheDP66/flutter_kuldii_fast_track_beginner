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
          return Container(
            padding: const EdgeInsets.all(20),
            height: 150,
            alignment: AlignmentDirectional.bottomStart,
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://picsum.photos/id/${777 + index}/200/300"),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              "Hello ${index + 1}",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          );
        },
      ),
    );
  }
}
