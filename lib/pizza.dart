import 'package:flutter/material.dart';

class WidgetPizza extends StatelessWidget {
  const WidgetPizza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              "Develop's Pizzas",
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(9.0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xffA1F0D8),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ),
          ],
        ),

        // The body of the app
        body: SizedBox(
          child: Column(
            children: [
              Center(
                  child: Stack(
                children: [
                  Center(
                    child: Center(

                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFFD0E3CC),
                          //set image as background
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: const Offset(
                                0,
                                4,
                              ),
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.only(top: 30),
                        width: 355,
                        height: 350,
                        child: Column(
                          children: const[
                             Text("Peperoni Pizza",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center),
                            Text("Hot pizza with peper",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center),
                                
                          ],
                        ),

                      ),
                    ),
                    
                    
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 90),
                    child: const Center(
                      child: Image(
                        image: AssetImage('lib/assets/images/pizza.png'),
                        width: 220,
                        height: 220,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 320),
                    child:  Center(
                      child: Column(
                        children:const [
                          Text(
                            "Made by",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Jose Juan Calderon Gonzalez",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      
                    ),
                  
                  )
                ],
              )),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Sizes",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                        FirtsSquare(
                          text: "S",

                        ),
                        FirtsSquare(
                          color: Colors.amber,
                          text: "M",
                        ),
                        FirtsSquare(
                          text: "L",
                        ),
                        FirtsSquare(
                          text: "XL",
                          
                        ),

                      ])),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Ingredients",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                        SecondSquare(
                          image: Image(
                            image: AssetImage('lib/assets/images/ingredient1.png'),
                            width: 20,
                            height: 20,
                            fit: BoxFit.cover,
                          ),
                        
                        ),
                        SecondSquare(
           
                          image: Image(
                            image: AssetImage('lib/assets/images/ingredient2.png'),
                            width: 20,
                            height: 20,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SecondSquare(
                          color: Colors.amber,
                          image: Image(
                            image: AssetImage('lib/assets/images/ingredient3.png'),
                            width: 20,
                            height: 20,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SecondSquare(
                          image: Image(
                            image: AssetImage('lib/assets/images/ingredient4.png'),
                            width: 20,
                            height: 20,
                            fit: BoxFit.cover,
                          ),
                        ),

                      ])),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE7F1EC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: const Text('Buy now!',
                        style: TextStyle(
                          color: Color(0xff5C877B),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}




class FirtsSquare extends StatelessWidget {
  final Color color;
  final String text;

  const FirtsSquare({
    super.key,
    this.color = Colors.white,
    this.text = "",
    //set optional variable

  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: color,
            //set image as background
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(
                  0,
                  4,
                ),
              ),
            ],
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

      ],
    );
  }
}


class SecondSquare extends StatelessWidget {
  final Color color;
  final String text;
  final Image image;
  const SecondSquare({
    super.key,
    this.color = Colors.white,
    this.text = "",
    //set optional variable
    this.image = const Image(
      image: AssetImage('lib/assets/images/ingredient1.png'),
      width: 20,
      height: 20,
      fit: BoxFit.cover,
    )
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: color,
            //set image as background
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(
                  0,
                  4,
                ),
              ),
            ],
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 17,
          height: 17,
          child: Center(
            child: image,
            
          ),
        )
      ],
    );
  }
}