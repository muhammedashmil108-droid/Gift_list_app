

import 'package:flutter/material.dart';
import 'package:gift_list_app/Veiw/homescreen.dart';
import 'package:gift_list_app/Veiw/loginscreen.dart';

class Movepage {
  static void goToLogin(BuildContext context){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Loginscreen())
    );
  }
  static void goToHome(BuildContext context){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Homescreen())
    );
  }
}
