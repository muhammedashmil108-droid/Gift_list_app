import 'package:flutter/material.dart';
import 'package:gift_list_app/Colors/appcolour.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: AppColour.backgroundGradient,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            // Giftbox Image
            Image.asset(
              'assets/images/giftbox.png',
              height: 230,
              width: 230,
              fit: BoxFit.contain,
            ),


            SizedBox(height: 22),

            // App Name
            Text(
              "Gift List App",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple
              ),
            ),
            SizedBox(height: 12,),
            // Tagline
            Text(
              'Save gift ideas for your\nloved ones.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                height: 1.6,
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}