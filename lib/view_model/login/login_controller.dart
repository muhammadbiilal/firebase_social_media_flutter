import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tech_media/utils/Utils.dart';

class LoginController with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;

  FirebaseAuth auth = FirebaseAuth.instance;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  void login(String email, String password) {
    setLoading(true);
    try {
      auth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) {
        Utils.toastMessage('User created successfully');
        setLoading(false);
      }).onError((error, stackTrace) {
        Utils.toastMessage(error.toString());
        setLoading(false);
      });
    } catch (e) {
      Utils.toastMessage(e.toString());
    }
  }
}
