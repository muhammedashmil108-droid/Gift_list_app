import 'package:flutter/material.dart';
import 'package:gift_list_app/Colors/appcolour.dart';

class Addscreen extends StatefulWidget {
  const Addscreen({super.key});

  @override
  State<Addscreen> createState() => _AddscreenState();
}

class _AddscreenState extends State<Addscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColour.purple,
        leading: IconButton(
          onPressed: (){},
           icon:Icon(
            Icons.arrow_back,
             size: 28,
                  color: Colors.black,
            ) ),
          title: Text(
        "ADD GIFT",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
       ),
       centerTitle: true,
         shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(15),
      bottomRight: Radius.circular(15),
    ),
  ),
      ),

      
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