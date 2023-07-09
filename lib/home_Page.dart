import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color bgColor = Color(0xff0E0E0E);
  Color cardColor = Color(0xff28293D);
  String gender = 'Male';
  int weight = 50;
  int age = 25;
  int height = 165;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: bgColor,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Card(
                    color: gender == 'Male' ? Colors.teal : cardColor,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          gender = 'Male';
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 45,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Card(
                    color: gender == 'Female' ? Colors.teal : cardColor,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          gender = 'Female';
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 45,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Card(
                    color: gender == 'Others' ? Colors.teal : cardColor,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          gender = 'Others';
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male_sharp,
                            color: Colors.white,
                            size: 45,
                          ),
                          Text(
                            'Others',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: Card(
              color: cardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$height',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Text(
                        'CM',
                        style: TextStyle(color: Colors.amber, fontSize: 12),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Slider(
                        thumbColor: Colors.teal,
                        activeColor: Colors.red,
                        min: 50,
                        max: 220,
                        value: height.toDouble(),
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Card(
                    color: cardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '$weight',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.white12,
                              mini: true,
                              onPressed: () {
                                if (weight > 1)
                                  setState(() {
                                    weight--;
                                  });
                              },
                              child: Icon(Icons.remove),
                            ),
                            SizedBox(width: 10),
                            FloatingActionButton(
                              backgroundColor: Colors.white12,
                              mini: true,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Card(
                    color: cardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '$age',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.white12,
                              mini: true,
                              onPressed: () {
                                if (age > 1)
                                  setState(() {
                                    age--;
                                  });
                              },
                              child: Icon(Icons.remove),
                            ),
                            SizedBox(width: 10),
                            FloatingActionButton(
                              backgroundColor: Colors.white12,
                              mini: true,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {
              double h = height / 100;
              double heightSquare = h * h;
              double result = weight / heightSquare;
              print('The result is ${result}');
            },
            child: Text(
              'Calculate',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 25,letterSpacing: 15),
            ),
            minWidth: double.infinity,
            color: Colors.red,
            height: 60,
          )
        ],
      ),
    );
  }
}
