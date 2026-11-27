import 'package:flutter/material.dart';
import 'package:gift_list_app/Colors/appcolour.dart';
import 'package:gift_list_app/navigations/movepage.dart';

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
          child:SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15),
            
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
              
            
                // Back Button
                IconButton(onPressed: (){
                  Movepage.goToLoginpageback(context);
                },
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
            
                  SizedBox(height: 50,),
            
                  // Full Name text feild
            
                  Text(
                    "FULL NAME*",
                    style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
                    ),
                  ),
            
                  SizedBox(height: 6,),
            
                  TextFormField(
                    decoration: InputDecoration(
            hintText:"Enter your name",
              prefixIcon: Icon(Icons.person_2_outlined),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),
                  ),
            
                  SizedBox(height: 12,),
            
                // Email Textformfeild
            
             Text(
                    "EMAIL ADDRESS*",
                    style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
                    ),
                  ),
            
                  SizedBox(height: 6,),
            
                  TextFormField(
                    decoration: InputDecoration(
            hintText:"Enter your email",
              prefixIcon: Icon(Icons.email_outlined),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),
                  ),
            
                  SizedBox(height: 12,),
            
                  // Password textformfeild
            
                   Text(
                    "PASSWORD*",
                    style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
                    ),
                  ),
            
                  SizedBox(height: 6,),
            
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
            hintText:"Enter your name",
              prefixIcon: Icon(Icons.lock_outline),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),
                  ),
            
                  SizedBox(height: 45,),
            
                  // Register Account Button
            
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
            onPressed: (){
              Movepage.goToLogin(context);
            }, 
            style: ElevatedButton.styleFrom(
              backgroundColor: MainColour.purple,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10)
              )
            ),
            child: Text(
              "Register Account",
              style: TextStyle(
                fontSize: 16,
              ),
              )
            ),
                  ),
            
                  SizedBox(height: 20,),
            
                  // Already have an account
                  Center(
                    child: Column(
            children: [
              Text(
                "Already have an account?",
                   style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
              ),
              SizedBox(height: 1,),
              TextButton(
                onPressed: (){
                  Movepage.goToLogin(context);
                },
                 child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: MainColour.purple
                    ),
                    ),
                    ),
            ],
                    ),
                  )
            
            
            
              
              ],
            ),
            ),
          )
           ),
    
  )
    );
  }
}