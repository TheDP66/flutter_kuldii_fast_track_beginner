import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Text Field"),
            centerTitle: true,
          ),
          body: ListView(
            // Kalau bisa gunakan ListView agar dapat discroll
            padding: const EdgeInsets.all(20),
            children: [
              TextField(
                controller: emailC,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  label: const Text("Email"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefix: const Text("Rp "),
                  prefixIcon: const Icon(Icons.email),
                  suffix: const Text("@gmail.com"),
                ),
                // Enter keyboard akan menjadi tulisan next
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: passC,
                autocorrect: false,
                obscureText: isHidden,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  label: const Text("Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: const Icon(Icons.key),
                  suffixIcon: IconButton(
                    onPressed: () {
                      isHidden = !isHidden;
                      setState(() {});
                    },
                    icon: Icon(Icons.remove_red_eye_outlined),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  print(
                      "Login dengan : Email (${emailC.text}) & Pass (${passC.text})");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo[300],
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text("LOGIN"),
              )
            ],
          )
          // body: const Center(
          //   child: Padding(
          //     padding: EdgeInsets.all(30),
          //     child: TextField(
          //       autocorrect:
          //           true, // Auto-correct pada typo. Kalau password di false
          //     ),
          //   ),
          // ),
          ),
    );
  }
}
