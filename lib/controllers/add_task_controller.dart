import 'dart:io';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:course/models/task.dart';

class AddTaskController extends GetxController{
  String title = '';
  String description = '';

  handleTitle(String newTitle){
    title = newTitle;
    update();
  }

  handleDescription(String newDescription){
    description = newDescription;
    update();
  }

  handleAdd()async{
    if (title == '' || description == '') {
      return;
    }

    final task = saveTaskInDB(this.title,);





  }

  Tasks saveTaskInDB(
    String id,
  ) {
    final task = Tasks(title: title, description: description);
    final db = FirebaseFirestore.instance;
    db
        .collection("Tasks")
        .doc(id)
        .set(task.toFirestore())
        .onError((e, _) => print("Error writing document: $e"));

    return task;
  }

}
