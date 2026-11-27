import 'package:flutter/material.dart';
import 'package:gift_list_app/Colors/appcolour.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: AppColour.backgroundGradient,
        ),
        child: SafeArea(
          child:Padding(
            padding: EdgeInsets.all(15),


child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [

    Text("hello"),

    // Back Button
    IconButton(onPressed: (){},
     icon: Icon(
      Icons.arrow_back,
      size: 28,
      color: Colors.black,
      ),
  padding: EdgeInsets.zero,
                    alignment: Alignment.centerLeft,
     ),

     SizedBox(height: 15,),

    //  Heading

    Text(
      "Create Account",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      ),

      SizedBox(height: 10,),

      // Subtitle

      Text(
        "Join Gift List App to manage  gift ideas",
        style: TextStyle(
          fontSize: 15,
           fontWeight: FontWeight.w600,
                      color: Colors.black54,
        ),
      ),
  ],
),
          )
           ),
    
  )
    );
  }
}