import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tech_media/utils/routes/route_name.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      // Add the code to be executed after the timer here.
      Navigator.pushNamed(context, RouteName.loginView);
      debugPrint("Timer finished!");
    });
  }
}
