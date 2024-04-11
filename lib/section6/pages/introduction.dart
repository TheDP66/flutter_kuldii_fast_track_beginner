import 'package:Instagram_Clone/section6/pages/container.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Title of introduction page",
          body: "Welcome to the app! This is a description of how it works.",
          image: Center(
            child: Lottie.asset('assets/lotties/welcome.json', height: 250.0),
          ),
        ),
        PageViewModel(
          title: "Title of blue page",
          body:
              "Welcome to the app! This is a description on a page with a blue background.",
          image: const Center(
            child: Icon(Icons.waving_hand, size: 50.0),
            // child: Image.network("https://picsum.photos/200", height: 175.0),
          ),
          decoration: const PageDecoration(
            pageColor: Colors.blue,
          ),
        ),
        PageViewModel(
          title: "Title of orange text and bold page",
          body:
              "This is a description on a page with an orange title and bold, big body.",
          image: const Center(
            child: Text("👋", style: TextStyle(fontSize: 100.0)),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.orange),
            bodyTextStyle:
                TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
        ),
        PageViewModel(
          title: "Title of custom button page",
          body: "This is a description on a page with a custom button below.",
          image: Lottie.asset('assets/lotties/intro.json', height: 175.0),
          footer: ElevatedButton(
            onPressed: () {
              // On button pressed
            },
            child: const Text("Let's Go!"),
          ),
        ),
        PageViewModel(
          title: "Title of custom body page",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Click on "),
              Icon(Icons.edit),
              Text(" to edit a post"),
            ],
          ),
          image: const Center(child: Icon(Icons.android)),
        ),
      ],
      showNextButton: true,
      next: const Text("NEXT"),
      // showBackButton: true,
      // back: const Text("BACK"),
      showSkipButton: true,
      skip: const Text("SKIP"),
      done: const Text(
        "DONE",
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      onDone: () {
        // On button pressed
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const ContainerPage(),
          ),
        );
      },
    );
  }
}
