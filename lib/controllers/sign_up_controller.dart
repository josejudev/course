import 'dart:io';
import 'package:course/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course/models/user.dart';
import 'package:course/profile.dart';


import 'package:get/get.dart';

class SignUpController extends GetxController {
  String username = '';
  String birthdate = '';
  String email = '';
  String password = '';

  handleUsername(String newUsername) {
    username = newUsername;
    update();
  }

  handleEmail(String newEmail) {
    email = newEmail;
    update();
  }

  handleBirthday(String newBirthday) {
    birthdate = newBirthday;
    update();
  }

  handlePassword(String newPassword) {
    password = newPassword;
    update();
  }

  handleSignUp() async {
    if (email == '' || password == '') {
      return;
    }
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (credential.user != null) {
        final user = saveUserInDB(credential.user!.uid);
        Get.offAll(() => WidgetProfile(
             users: user,
            ));
      }

    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error', e.code,
          backgroundColor: Colors.blue[100],
          duration: const Duration(seconds: 5));
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Users saveUserInDB(
    String id,
  ) {
    final user = Users(username: username, email: email);
    final db = FirebaseFirestore.instance;
    db
        .collection("User")
        .doc(id)
        .set(user.toFirestore())
        .onError((e, _) => print("Error writing document: $e"));

    return user;
  }
}
