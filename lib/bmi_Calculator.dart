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
                  color: cardColor,
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
              Expanded(
                flex: 5,
                child: Card(
                  color: cardColor,
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
              Expanded(
                flex: 5,
                child: Card(
                  color: cardColor,
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
            ]),
          ),
        ),
        Expanded(
          flex: 10,
          child: Container(
            color: Colors.amber,
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
