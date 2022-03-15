// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_ui/secondpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    num date = now.day;
    num month = now.month;
    num year = now.year;

    // ignore: prefer_const_constructors
    return SafeArea(
      // ignore: prefer_const_constructors
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                height: 580,
                width: 450,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    stops: [0.2, 0.5],
                    end: Alignment.topRight,
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
                    bottomLeft: Radius.circular(90),
                    bottomRight: Radius.circular(90),
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
                          child: Icon(
                            Icons.drag_indicator,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 60),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 20,
                              color: Colors.white,
                            ),
                            //   SizedBox(width: 4),
                            Text(
                              'Minsk',
                              style: TextStyle(
                                fontSize: 27,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
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
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 130,
                          ),
                          height: 20,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 6, 207, 243),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  width: 5,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Updating',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Image(
                        image: AssetImage('assets/images/Cloudremoved.png'),
                        height: 200,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '21',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 100,
                          ),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          margin: EdgeInsets.only(bottom: 60),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 6, 207, 243),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.white,
                              width: 3,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Thunderstorm',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$date / $month / $year',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 2,
                      width: 340,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white10,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      'Today',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecondPage(),
                        ),
                      );
                    },
                    child: Text(
                      "7 days >",
                      style: TextStyle(
                        color: Colors.white30,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 70,
                    //     margin: EdgeInsets.only(left: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white30),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                '23',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              height: 7,
                              width: 7,
                              decoration: BoxDecoration(
                                //  color: Color.fromARGB(255, 6, 207, 243),
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Image(
                          image: AssetImage(
                              'assets/images/chhota_badal-removebg-preview.png'),
                        ),
                        Text(
                          "10:00",
                          style: TextStyle(
                            color: Colors.white38,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    width: 90,
                    //       margin: EdgeInsets.only(left: 40),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        stops: [0.2, 0.5],
                        end: Alignment.topRight,
                        colors: [
                          Color.fromARGB(255, 112, 222, 241),
                          Color.fromARGB(255, 6, 207, 243),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 112, 222, 241)
                              .withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                '21',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              height: 7,
                              width: 7,
                              margin: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                //  color: Color.fromARGB(255, 6, 207, 243),
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 5,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Image(
                          image:
                              AssetImage('assets/images/chhhotta_prev_ui.png'),
                        ),
                        Text(
                          "11:00",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white30),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                '22',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              height: 7,
                              width: 7,
                              decoration: BoxDecoration(
                                //  color: Color.fromARGB(255, 6, 207, 243),
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Image(
                          image: AssetImage(
                              'assets/images/chhota_badal-removebg-preview.png'),
                        ),
                        Text(
                          "12:00",
                          style: TextStyle(
                            color: Colors.white38,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white30),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                '19',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              height: 7,
                              width: 7,
                              decoration: BoxDecoration(
                                //  color: Color.fromARGB(255, 6, 207, 243),
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Image(
                          image: AssetImage('assets/images/moon_prev_ui.png'),
                        ),
                        Text(
                          "01:00",
                          style: TextStyle(
                            color: Colors.white38,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
