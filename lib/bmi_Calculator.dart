import 'package:flutter/material.dart';

class Practice01 extends StatefulWidget {
  const Practice01({super.key});

  @override
  State<Practice01> createState() => _Practice01State();
}

class _Practice01State extends State<Practice01> {
  Color bgColor=Color(0xff0E0E0E);
  Color cardColor=Color(0xff28293D);
  bool isName=true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: bgColor,
          title: Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isName=true;
                        });
                      },
                      child: Card(
                        color: isName==true? Colors.teal:cardColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 45,
                              color: Colors.white,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isName=false;
                        });
                      },
                      child: Card(
                        color: isName==false? Colors.teal:cardColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 45,
                              color: Colors.white,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(color: Colors.white),
                            )
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
              child: Container(
                color: Colors.yellow,
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                color: Colors.grey,
              ),
            ),
          ],
        ));
  }
}
