import 'package:flutter/material.dart';
import 'package:gift_list_app/splash.dart';

void main(){
  runApp(GiftListApp());
}

class GiftListApp extends StatelessWidget {
  const GiftListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}