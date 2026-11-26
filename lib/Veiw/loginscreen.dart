import 'package:flutter/material.dart';
import 'package:gift_list_app/Colors/appcolour.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
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
          child: Padding(
            padding:EdgeInsets.all(15),


            child: Column(
              children: [

SizedBox(height: 25,),

// Gift image

Image.asset(
  'assets/images/giftbox.png',
  height: 110,
  width: 110,
  fit: BoxFit.contain,
),

SizedBox(height: 20,),

// Welcome Text

Text(
  "Welcome Back!",
  style: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
),

 SizedBox(height: 12,),

 Text(
  "Login to continue",
  style: TextStyle(
    fontSize: 15,
    color: Colors.black
  ),
 ),

 SizedBox(height: 52,),


// Email TextFormFeild
 TextFormField(
decoration: InputDecoration(
  hintText: "Enter your email",
  prefixIcon: Icon(Icons.email_outlined),
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
),
 ),

 SizedBox(height: 10,),

// Password TextFormFeild

TextFormField(
  decoration: InputDecoration(
    hintText: "Enter your password",
    prefixIcon: Icon(Icons.lock_outline),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
  ),
),


// Forget Password
Align(
  alignment: Alignment.centerRight,
  child: TextButton(
    onPressed: (){},
     child: Text(
      "Forget password?",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 12,
        fontWeight:FontWeight.w600,
        decoration: TextDecoration.underline,
        decorationColor: Colors.blue,
      ),
     ),
     ),
)


              ],
            ),
            )
          ),
      ),
    );
  }
}