import 'package:flutter/material.dart';
import 'package:gift_list_app/Colors/appcolour.dart';
import 'package:gift_list_app/navigations/movepage.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {

  final _formkey = GlobalKey<FormState>();

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // LOGIN FUNCTION
  void login(){
    if(_formkey.currentState!.validate()){
      if(usernameController.text == 'ashmil' &&
      passwordController.text == '1234'){

     Movepage.goToHome(context);
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Invalid user or password"))
        );
      }
    }
  }
  @override
void dispose() {
  usernameController.dispose();
  passwordController.dispose();
  super.dispose();
}
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
  height: 140,
  width: 140,
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
    fontSize: 18,
    color: Colors.black
  ),
 ),

 SizedBox(height: 60,),
Form(
key: _formkey,
child : Column(
  children: [

// Email TextFormFeild
 TextFormField(
  controller: usernameController,
decoration: InputDecoration(
  hintText: "Enter your email",
  prefixIcon: Icon(Icons.email_outlined),
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
),
validator: (value) {
  if(value == null || value.isEmpty){
    return 'Please enter username';
  } else if(!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
    return "username must contain only letter";
  }
  return null;
},
 ),

 SizedBox(height: 10,),

// Password TextFormFeild

TextFormField(
  controller: passwordController,
  obscureText: true,
  decoration: InputDecoration(
    hintText: "Enter your password",
    prefixIcon: Icon(Icons.lock_outline),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
  ),
  validator: (value) {
    if(value == null || value.isEmpty){
      return 'Please enter password';
    }else if(!RegExp(r'^[0-9]{4}$').hasMatch(value)){
      return "Password must contain exactly 4 digits";
    }
    return null;
  },
),
              ]
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
        fontSize: 16,
        fontWeight:FontWeight.w600,
        decoration: TextDecoration.underline,
        decorationColor: Colors.blue,
      ),
     ),
     ),
),

SizedBox(height: 30,),

// Login Button
SizedBox(
width: double.infinity,
height: 45,
child: ElevatedButton(
  onPressed: login,
  style: ElevatedButton.styleFrom(
    backgroundColor: MainColour.purple,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)
     )
   ),
   child: Text("Login"),
   ),
),

SizedBox(height: 20,),

// Sign Up button
SizedBox(
  
   width: double.infinity,
   height: 55,
   child: ElevatedButton(
     onPressed: () {
      Movepage.goToSignup(context);
     },
     style: ElevatedButton.styleFrom(
       backgroundColor: Colors.white,
       foregroundColor: Colors.black,
       shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
       ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
          "Don't you have any account?",
          style: TextStyle(fontSize: 15),
        ),
         Text(
          'Sign up',
          style: TextStyle(
            fontSize: 18,
            color: MainColour.purple,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    ),
  ),
),
              
            
              ],
            ),
            )
          ),
      ),
    );
  }
}