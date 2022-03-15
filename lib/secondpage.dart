// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_weather_ui/homepage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                height: 350,
                width: 450,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    // ignore: prefer_const_literals_to_create_immutables
                    stops: [0.2, 0.5],
                    end: Alignment.topRight,
                    // ignore: prefer_const_literals_to_create_immutables
                    colors: [
                      Color.fromARGB(255, 112, 222, 241),
                      Color.fromARGB(255, 6, 207, 243),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color:
                          Color.fromARGB(255, 112, 222, 241).withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(18.0),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 6, 207, 243),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 1),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ),
                                );
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                size: 17,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Icon(
                          Icons.calendar_today,
                          color: Colors.white,
                          size: 17,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          '7 days',
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 70),
                        PopupMenuButton(
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                            itemBuilder: (context) => [
                                  PopupMenuItem(
                                    onTap: () {
                                      // ignore: unused_local_variable
                                      final snackbar = SnackBar(
                                        content: Text('You Pressed 1'),
                                      );
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackbar);
                                    },
                                    child: Text('One'),
                                    value: 1,
                                  ),
                                  PopupMenuItem(
                                    onTap: () {
                                      final snackbar1 = SnackBar(
                                        content: Text("You Pressed 2"),
                                      );
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackbar1);
                                    },
                                    child: Text('Two'),
                                    value: 2,
                                  ),
                                  PopupMenuItem(
                                    onTap: () {
                                      final snackbar2 = SnackBar(
                                        content: Text('You pressed 3'),
                                      );
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackbar2);
                                    },
                                    child: Text('Three'),
                                    value: 3,
                                  )
                                ]),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        SizedBox(
                          width: 160,
                        ),
                        // Text(
                        //   'Tommorrow',
                        //   style: TextStyle(fontSize: 18),
                        // ),
                      ],
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Image(
                          image: AssetImage(
                              'assets/images/SmallClouds-removebg-preview.png'),
                          height: 120,
                        ),
                        // SizedBox(width: 2),
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'Tommorrow',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '20',
                              style: TextStyle(
                                fontSize: 64,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Rainy-Cloudy',
                              style: TextStyle(
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 28),
                              child: Text(
                                '/17',
                                style: TextStyle(
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white54,
                                ),
                              ),
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              margin: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 6, 207, 243),
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: Colors.white54,
                                  width: 3,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 2,
                      width: 340,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white10,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.speed,
                              color: Colors.white60,
                              size: 20,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "13 km/h",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Wind",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.water_drop,
                              color: Colors.white38,
                              size: 20,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "24 %",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Humidity",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white38,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.water,
                              color: Colors.white60,
                              size: 20,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "87 %",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Chance of rain",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white38,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Mon',
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Image(
                    image: AssetImage(
                      'assets/images/chhota_badal-removebg-preview.png',
                    ),
                    height: 30,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Rainy',
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    '+20',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    margin: EdgeInsets.only(bottom: 6),
                    decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 6, 207, 243),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white,
                        // width: 3,
                      ),
                    ),
                  ),
                  Text(
                    '   +14',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    margin: EdgeInsets.only(bottom: 6),
                    decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 6, 207, 243),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white54,
                        // width: 3,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Tue',
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Image(
                    image: AssetImage(
                      'assets/images/SmallClouds-removebg-preview.png',
                    ),
                    height: 30,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Rainy',
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    '+22',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    margin: EdgeInsets.only(bottom: 6),
                    decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 6, 207, 243),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white,
                        // width: 3,
                      ),
                    ),
                  ),
                  Text(
                    '   +16',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    margin: EdgeInsets.only(bottom: 6),
                    decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 6, 207, 243),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white54,
                        // width: 3,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Wed',
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Image(
                    image: AssetImage(
                      'assets/images/Cloudremoved.png',
                    ),
                    height: 30,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Storm',
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    '+19',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    margin: EdgeInsets.only(bottom: 6),
                    decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 6, 207, 243),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white,
                        // width: 3,
                      ),
                    ),
                  ),
                  Text(
                    '   +13',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    margin: EdgeInsets.only(bottom: 6),
                    decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 6, 207, 243),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white54,
                        // width: 3,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Thu',
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Image(
                    image: AssetImage(
                      'assets/images/moon_prev_ui.png',
                    ),
                    height: 30,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Slow',
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    '+18',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    margin: EdgeInsets.only(bottom: 6),
                    decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 6, 207, 243),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white,
                        // width: 3,
                      ),
                    ),
                  ),
                  Text(
                    '   +12',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    margin: EdgeInsets.only(bottom: 6),
                    decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 6, 207, 243),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white54,
                        // width: 3,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Fri',
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Image(
                    image: AssetImage(
                      'assets/images/chhhotta_prev_ui.png',
                    ),
                    height: 30,
                  ),
                  // SizedBox(
                  //   width: 2,
                  // ),
                  Text(
                    'Thunder',
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    '+23',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    margin: EdgeInsets.only(bottom: 6),
                    decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 6, 207, 243),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white,
                        // width: 3,
                      ),
                    ),
                  ),
                  Text(
                    '   +19',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    margin: EdgeInsets.only(bottom: 6),
                    decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 6, 207, 243),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white54,
                        // width: 3,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Sat',
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Image(
                    image: AssetImage(
                      'assets/images/chhota_badal-removebg-preview.png',
                    ),
                    height: 30,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Rainy',
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    '+25',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    margin: EdgeInsets.only(bottom: 6),
                    decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 6, 207, 243),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white,
                        // width: 3,
                      ),
                    ),
                  ),
                  Text(
                    '   +17',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    margin: EdgeInsets.only(bottom: 6),
                    decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 6, 207, 243),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white54,
                        // width: 3,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Sun',
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Image(
                    image: AssetImage(
                      'assets/images/Cloudremoved.png',
                    ),
                    height: 30,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Storm',
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    '+21',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    margin: EdgeInsets.only(bottom: 6),
                    decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 6, 207, 243),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white,
                        // width: 3,
                      ),
                    ),
                  ),
                  Text(
                    '   +18',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    margin: EdgeInsets.only(bottom: 6),
                    decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 6, 207, 243),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white54,
                        // width: 3,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
