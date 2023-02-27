import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WidgetSingUp extends StatefulWidget {
  const WidgetSingUp({Key? key}) : super(key: key);

  @override
  State<WidgetSingUp> createState() => _WidgetSignUpState();
}

class _WidgetSignUpState extends State<WidgetSingUp> {
  final TextEditingController _dateController = TextEditingController();

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
          child: const Icon(
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
              'Hello! Register to get started',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Enter your username',
                        prefixIcon: Icon(
                          FontAwesomeIcons.at,
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
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _dateController,
                      onTap: () async {
                        DateTime? dateSelect = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now());
                        if (dateSelect != null) {
                          setState(() {
                            //format date whit class
                            _dateController.text =
                                '${dateSelect.day}-${dateSelect.month}-${dateSelect.year}';
                          });
                        }
                      },
                      keyboardType: TextInputType.none,
                      style: const TextStyle(
                        
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        hintText: "Select birth date",
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.calendar_today),
                          onPressed: () async {
                            DateTime? dateSelect = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime.now());
                            if (dateSelect != null) {
                              setState(() {
                                //format date whit class
                                _dateController.text =
                                    '${dateSelect.day}-${dateSelect.month}-${dateSelect.year}';
                              });
                            }
                          },
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
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
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
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                      ),
                      obscureText: true,
                      obscuringCharacter: '*',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'Confirm password',
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                      ),
                      obscureText: true,
                      obscuringCharacter: '*',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xff1E232C),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text('Register with social media',
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


//create a class to format date