import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
        title: const Text("Snackbar"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text("Berhasil hapus produk."),
                action: SnackBarAction(
                  textColor: Colors.blue[600],
                  label: "CANCEL",
                  onPressed: () {
                    print("TIDAK JADI HAPUS");
                  },
                ),
                backgroundColor: Colors.black,
                duration: const Duration(seconds: 3),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),

                // Adding Margin to Snackbar
                margin: const EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
              ),
            );
          },
          child: const Text("Show Snackbar"),
        ),
      ),
    );
  }
}
