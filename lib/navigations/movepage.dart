

import 'package:flutter/material.dart';
import 'package:gift_list_app/Veiw/homescreen.dart';
import 'package:gift_list_app/Veiw/loginscreen.dart';
import 'package:gift_list_app/Veiw/signupscreen.dart';

class Movepage {
  static void goToLogin(BuildContext context){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Loginscreen())
    );
  }
  static void goToHome(BuildContext context){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Homescreen())
    );
  }
  static void goToSignup(BuildContext context){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Signupscreen())
    );
  }
   static void goToLoginpageback(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Loginscreen())
    );
}
}