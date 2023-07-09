import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  Color bgColor = Color(0xff0E0E0E);
  Color cardColor = Color(0xff28293D);
  Color textColor = Colors.white;
  String gender = 'Male';
  double height = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(children: [
        Expanded(
          flex: 10,
          child: Container(
            child: Row(children: [
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
                            Icons.people,
                            color: textColor,
                            size: 40,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(color: textColor, fontSize: 20),
                          )
                        ]),
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
                            Icons.people,
                            color: textColor,
                            size: 40,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(color: textColor, fontSize: 20),
                          )
                        ]),
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
                            Icons.people,
                            color: textColor,
                            size: 40,
                          ),
                          Text(
                            'Others',
                            style: TextStyle(color: textColor, fontSize: 20),
                          )
                        ]),
                  ),
                ),
              ),
            ]),
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
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '$height',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    Text(
                      'CM',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 10,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ]),
    );
  }
}
