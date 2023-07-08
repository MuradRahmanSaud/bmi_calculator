import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color bgColor = Color(0xff0E0E0E);
  Color cardColor = Color(0xff28293D);
  bool isMale = true;
  String gender = 'Male';
  int weight = 3;
  int age = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('BMI Calculator Murad'),
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
            child: Container(
              color: Colors.amber,
            ),
          ),
          Expanded(
            flex: 10,
            child: Row(children: [
              Expanded(
                flex: 5,
                child: Card(
                  color: cardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('Weight',style: TextStyle(color: Colors.white),),
                      Text('$weight',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        FloatingActionButton(
                          backgroundColor: Colors.white12,
                          mini: true,
                          onPressed: (){
                            if(weight>1) setState(() {
                              weight--;
                            });
                          },

                        child: Icon(Icons.remove),),
                          SizedBox(width: 10),
                          FloatingActionButton(
                            backgroundColor: Colors.white12,
                            mini: true,
                            onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },
                            child: Icon(Icons.add),),
                      ],)
                  ],)
                ),
              ),
              Expanded(
                flex: 5,
                child: Card(
                    color: cardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Age',style: TextStyle(color: Colors.white),),
                        Text('$age',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.white12,
                              mini: true,
                              onPressed: (){
                                if(age>1) setState(() {
                                  age--;
                                });
                              },
                              child: Icon(Icons.remove),),
                            SizedBox(width: 10),
                            FloatingActionButton(
                              backgroundColor: Colors.white12,
                              mini: true,
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(Icons.add),),
                          ],)
                      ],)
                ),
              ),

            ],),
          ),

        ],
      ),
    );
  }
}
