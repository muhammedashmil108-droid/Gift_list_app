

import 'package:flutter/material.dart';
import 'package:gift_list_app/Veiw/loginscreen.dart';

class Movepage {
  static void goToLogin(BuildContext context){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Loginscreen())
    );
  }
}
