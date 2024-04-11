import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                title: const Text('Judul'),
                content: const Text(
                    "Ini adalah deskripsi AlertDialog. Kamu bisa melihatnya disini."),
                actions: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Close"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Submit"),
                  ),
                ],
              ),
              // builder: (context) => Dialog(
              //   child: Column(
              //     mainAxisSize: MainAxisSize.min, // Tinggi sesuai dengan isinya
              //     children: const [
              //       Text("Judul"),
              //       Text(
              //           "Ini adalah deskripsi AlertDialog. Kamu bisa melihatnya disini."),
              //     ],
              //   ),
              // ),
            );
            // showAboutDialog(
            //   context: context,
            //   applicationName: "Learn Flutter Beginner",
            //   applicationIcon: const FlutterLogo(),
            //   applicationLegalese: "Legalese",
            //   applicationVersion: "v4.2.0",
            //   children: [
            //     const Text("This apps create for learning purpose"),
            //   ],
            // );
          },
          child: const Text("Show Dialog"),
        ),
      ),
    );
  }
}
