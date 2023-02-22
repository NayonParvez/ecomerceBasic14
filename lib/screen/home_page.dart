import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _products = [
    'Monitor',
    'Mouse',
    'Router',
    'KeyBord',
    'Air Cular'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            const Text(
              "Online shopping Center",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            const Text(
              'Life is Easy',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 100,
                      width: 210,
                      decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text('We are Offering 30% Discount'),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Expanded(
                              flex: 1,
                              child: Image.asset(
                                'images/2no.jpg',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 130,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 100,
                      width: 210,
                      decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text('We are Offering 30% Discount'),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Expanded(
                              flex: 1,
                              child: Image.asset(
                                'images/2no.jpg',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 130,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 210,
                    decoration: BoxDecoration(
                      color: Colors.cyanAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text('We are Offering 30% Discount'),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Expanded(
                            flex: 1,
                            child: Image.asset(
                              'images/2no.jpg',
                              fit: BoxFit.cover,
                              height: 50,
                              width: 130,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Catagory",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _products.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Text(_products[index]),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.tealAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Call',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.call,color: Colors.white,size: 25,),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Text(
                          'Share',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.share,color: Colors.white,size: 25,),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Text(
                          'Message',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.message,color: Colors.white,size: 25,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
