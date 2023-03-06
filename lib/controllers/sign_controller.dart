import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:course/profile.dart';
import 'package:course/models/user.dart';


class SingInController extends GetxController {
  String email = '';
  String password = '';

  handleEmail(String newEmail) {
    email = newEmail;
    update();
  }

  handlePassword(String newPassword) {
    password = newPassword;
    update();
  }

  handleSignIn() async {
    if (email == '' || password == '') {
      return;
    }
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);      if (credential.user != null) {
        Users? user = await getUser(credential.user!.uid);
        if (user != null) {
          Get.offAll(() => WidgetProfile(
            users: user));
        }
      }


    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error', e.code,
          backgroundColor: Colors.blue[100],
          duration: const Duration(seconds: 5));
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

    Future<Users?> getUser(String id) async {
    Users user;
    final db = FirebaseFirestore.instance;
    final docRef = db.collection("User").doc(id);
    user = await docRef.get().then(
      (DocumentSnapshot<Map<String, dynamic>> doc) {
        return Users.fromFirestore(doc);
        // ...
      },
      onError: (e) => print("Error getting document: $e"),
    );
    return user;
  }
}