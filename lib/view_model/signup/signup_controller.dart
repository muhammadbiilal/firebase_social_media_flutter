import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:tech_media/utils/Utils.dart';

class SignupController with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;

  FirebaseAuth auth = FirebaseAuth.instance;
  final databaseRef = FirebaseDatabase.instance.ref('User');

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  void signUp(
      BuildContext context, String username, String email, String password) {
    setLoading(true);
    try {
      auth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) {
        databaseRef.child(value.user!.uid.toString()).set({
          'uid': value.user!.uid.toString(),
          'email': value.user!.email.toString(),
          'onlineStatus': 'noOne',
          'phone': '',
          'userName': username,
          'profile': '',
        }).then((value) {
          setLoading(false);
        }).onError((error, stackTrace) {
          Utils.toastMessage(error.toString());
          setLoading(false);
        });

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
