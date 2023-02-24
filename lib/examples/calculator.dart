import 'package:flutter/material.dart';

class WidgetImage extends StatelessWidget {
  const WidgetImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue.shade200,
        title: const Text('Calculadora'),
        leading: const Icon(Icons.arrow_back_ios),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const Expanded(
                child: Square(color: Color.fromRGBO(97, 97,97, 1), text: 'Jose Juan Calderon Gonzalez'),
              ),
              Container(


                child: Row(
                  children: const [
                    Expanded(
                      child: Square(color: Colors.grey, text:'AC'),
                    ),
                    Expanded(
                      child: Square(color: Colors.grey, text: '+/-'),
                    ),
                    Expanded(
                      child: Square(color: Colors.grey, text: '%'),
                    ),
                    Expanded(
                      child: Square(color: Colors.orange, text:'÷'),
                    ),
                  ],
                ),
              ),
              Container(
   
                child: Row(
                  children: const [
                    Expanded(
                      child: Square(color: Colors.blue, text: '7'),
                    ),
                    Expanded(
                      child: Square(color: Colors.blue, text: '8'),

                    ),
                    Expanded(
                      child: Square(color: Colors.blue , text: '9'),
                    ),
                    Expanded(
                      child: Square(color: Colors.orange, text:'X'),
                    ),
                  ],
                ),
              ),
              Container(

                child: Row(
                  children: const [
                    Expanded(
                      child: Square(color: Colors.blue, text: '4'),
                    ),
                    Expanded(
                      child: Square(color: Colors.blue , text: '5'),
                    ),
                    Expanded(
                      child: Square(color: Colors.blue , text: '6'),
                    ),
                    Expanded(
                      child: Square(color: Colors.orange , text: '-'),
                    ),
                  ],
                ),
              ),
              Container(
       
                child: Row(
                  children: const [
                    Expanded(
                      child: Square(color: Colors.blue, text: '1'),
                    ),
                    Expanded(
                      child: Square(color: Colors.blue, text: '2'),
                    ),
                    Expanded(
                      child: Square(color: Colors.blue, text: '3'),
                    ),
                    Expanded(
                      child: Square(color: Colors.orange, text: '+'),
                    ),
                  ],
                ),
              ),
              Container(
                

                child: Row(
                  children: const [
                    Expanded(
                      flex: 2,
                      child: Square(color: Colors.blue, text: '0'),
                    ),
                    Expanded(
                      child: Square(color: Colors.blue, text: '1'),
                    ),
                    Expanded(
                      child: Square(color: Colors.orange,   text: '='),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class Square extends StatelessWidget {
  final Color color;
  final String text;
  const Square({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
     // extract the text string from the controller
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
   
            fontFamily: 'Arial',
          ),
        ),
      ),
    );
  }
}



