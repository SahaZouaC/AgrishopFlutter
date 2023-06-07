import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        //logo
        Padding(
          padding:
              const EdgeInsets.only(left: 80.0, right: 80, bottom: 10, top: 40),
          child: Image.asset('lib/images/LOGO.png'),
        ),
        // new image
        Padding(
          padding:
              const EdgeInsets.only(left: 8.0, right: 8, bottom: 0, top: 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'lib/images/tractor.jpg',
              fit: BoxFit.cover,
              width: 500,
              height: 200,
            ),
          ),
        ),

        // we delever Tools at your doorstep
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text(
            "We provide Agricultural tools at your Doorstep",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        //many designs everyday
        Text("Increase your production EveryDay",
            style: TextStyle(color: Colors.grey[600])),

        const Spacer(),

        // get started button
        GestureDetector(
          onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return LoginPage(
                onTap: () {},
              );
            },
          )),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(24),
            child: const Text(
              'Get Started',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

        const Spacer(),
      ]),
    );
  }
}
