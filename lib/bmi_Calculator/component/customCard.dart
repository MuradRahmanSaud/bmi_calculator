import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.color, required this.title, required this.icon});

  final Color color;
  String title;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    Color cardColor = Colors.amber;
    return Expanded(
      child: Center(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: cardColor,
                offset: Offset(0, 1),
                blurRadius: 5,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
              Icon(icon,color: Colors.white,)
            ],
          ),
        ),
      ),
    );
  }
}
