import 'package:bmi_calculator/bmi_Calculator/component/customCard.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomCard(
                      color: Color(0xff1d1e33),
                      title: 'Male',
                      icon: Icons.male,
                    ),
                    CustomCard(
                      color: Color(0xff1d1e33),
                      title: 'Female',
                      icon: Icons.female,

                    ),
                  ],
                ),
              ),
              CustomCard(
                color: Color(0xff1d1e33),
                title: 'Height',
                icon: Icons.add_a_photo,
              ),
              Expanded(
                child: Row(
                  children: [
                    CustomCard(
                      color: Color(0xff1d1e33),
                      title: 'Weight',
                      icon: Icons.add_circle,
                    ),
                    CustomCard(
                      color: Color(0xff1d1e33),
                      title: 'Height',
                      icon: Icons.account_balance_outlined,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
