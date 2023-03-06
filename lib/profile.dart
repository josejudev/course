import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'controllers/add_task_controller.dart';

import 'package:course/models/user.dart';

class WidgetProfile extends StatelessWidget {
  final Users users;
  final controller = Get.put(AddTaskController());


  WidgetProfile({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil de ${users.username}'),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.arrowLeft),
            onPressed: () {},
          ),
        ],
      ),

      // The body of the app
      body: ListView(
        //Login form

        children: [
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                child: Row(children: [
                  Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                width: double.infinity,
                                height: 40,
                                child:  TextField(
                                  onChanged: controller.handleTitle,
                                  decoration: InputDecoration(
                
                                    hintText: 'Add title',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: 40,
                              child:  Padding(
                                padding:  EdgeInsets.all(2.0),
                                child:  TextField(
                                  onChanged: controller.handleDescription,

                                  decoration: InputDecoration(
                                    hintText: 'Add description',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Expanded(
                      child: Container(
                          width: double.infinity,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: ElevatedButton(
                               onPressed: () {
                                controller.handleAdd();
                                },
                                child: Text('Add task'),
                                style: ElevatedButton.styleFrom(
                                  elevation: 4,
                                  backgroundColor: Colors.teal,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                  ),
                                )),
                          )))
                ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
