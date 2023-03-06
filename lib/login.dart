import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'controllers/sign_controller.dart';

class WidgetLogin extends StatelessWidget {

  final controller = Get.put(SingInController());
   WidgetLogin({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.white,
            shape: const CircleBorder(),
          ),
          child:  const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),

      // The body of the app
      body: ListView(
        //Login form

        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Welcome Back! is good to see you again',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(
            height: 40,
          ),
          //Email
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child:  Padding(

                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (v){
                        controller.handleEmail(v);
                      
                      },
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Enter your email',
                        suffixIcon: Icon(
                          Icons.mail_outline,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                      ),
                      obscureText: false,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (v){
                        controller.handlePassword(v);
                      },
                      style: const TextStyle(
                        fontSize: 18
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Enter your password',
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                      ),
                      obscureText: true,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.handleSignIn();
                    },
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      elevation: 4,
                      backgroundColor: const Color(0xff1E232C),
                      fixedSize: const Size(300, 50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    )
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text('Login with social media',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    //sign in with google, facebook, twitter
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                       Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blue,
                          size: 40,
                        ),
                      ),
                       SizedBox(
                        width: 10,
                      ),
                       Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Image(
                          image: NetworkImage(
                              'http://pngimg.com/uploads/google/google_PNG19635.png'),
                          width: 56,
                          height: 56,
                        ),
                      ),
                       SizedBox(
                        width: 10,
                      ),
                       Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Icon(
                          FontAwesomeIcons.apple,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
