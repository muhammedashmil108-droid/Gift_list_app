import 'package:flutter/material.dart';
import 'package:gift_list_app/Colors/appcolour.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient:AppColour.backgroundGradient,
        ),
    
  )
  );
  }
}