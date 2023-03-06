import 'package:course/login.dart';
import 'package:course/singUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WidgetHome extends StatelessWidget {
  const WidgetHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          child: Container(
              child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/img.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //create a container with a form
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 220,
                ),
                const Padding(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    'Flower House',
                    style: TextStyle(
                      color: Color(0xff1E232C),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Center(
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(() =>  WidgetLogin());
                        },
                        child: const Text('Login'),
                        style: ElevatedButton.styleFrom(
                          elevation: 4,
                          backgroundColor: const Color(0xff1E232C),
                          fixedSize: const Size(300, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(

                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() =>  const WidgetSingUp());

                    },
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.blue,
                      elevation: 4,
                      backgroundColor: Colors.white,
                      fixedSize: const Size(300, 50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                          
                        ),
                      ),
                    ),
                    child: const Text(
                      'Create Account',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ))),
    );
  }
}
