import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color cardColor = Color(0xff28293D);
  var gender;
  int weight = 160;
  int age = 25;
  int height = 150;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Row(children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      gender = 'Male';
                    });
                  },
                  child: Card(
                    color: gender == 'Male' ? Colors.teal : cardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.man, color: Colors.white, size: 80),
                        gender == 'Male'
                            ? Text(
                                'Male',
                                style: TextStyle(
                                    fontSize: 50, color: Colors.white),
                              )
                            : Text(''),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      gender = 'Female';
                    });
                  },
                  child: Card(
                    color: gender == 'Female' ? Colors.teal : cardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.woman, color: Colors.white, size: 80),
                        gender == 'Female'
                            ? Text(
                                'Female',
                                style: TextStyle(
                                    fontSize: 50, color: Colors.white),
                              )
                            : Text(''),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            flex: 7,
            child: Card(
              color: cardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$height',
                          style: TextStyle(fontSize: 30, color: Colors.white)),
                      Text('CM',
                          style: TextStyle(fontSize: 15, color: Colors.white))
                    ],
                  ),
                  Slider(
                      min: 100,
                      max: 250,
                      value: height.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          height = value.toInt();
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    color: cardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Text(
                          '$weight',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (weight > 1) weight--;
                                });
                              },
                              child: Icon(Icons.remove),
                            ),
                            SizedBox(width: 10),
                            FloatingActionButton(
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
                  child: Card(
                    color: cardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Text(
                          '$age',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
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
          Expanded(
            flex: 8,
              child: Card(
                color: cardColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('result',style: TextStyle(color: Colors.white,fontSize: 30))
                  ],
                ),

              )),
          MaterialButton(
            onPressed: () {
              double h = height / 100;
              double heightSquare = h * h;
              double result = weight / heightSquare;

            },
            child: Text('Generate',style: TextStyle(color: Colors.white,fontSize: 40)),
            minWidth: double.infinity,
            color: Colors.teal,
            height: 70,
          ),
        ],
      ),
    );
  }
}
