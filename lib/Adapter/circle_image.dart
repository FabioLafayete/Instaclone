import 'package:flutter/material.dart';
import 'package:instaclone/Adapter/circle_color.dart';

class CircleImage{

  static Widget defaultImage({
    String image,
    double radius,
    double widht,
    double height,
    double border
  }){
    return SizedBox(
      width: widht,
      height: height,
      child: CustomPaint(
        painter: CircleColors(
          progress: 1,
          startColor: Color(0xFFbd346f),
          midleColor: Color(0xFF872487),
          midle2Color: Color(0xFFdf8b46),
          endColor: Color(0xFFbd346f),
          width: border,
        ),
        child: Center(
          child: CircleAvatar(
            minRadius: 15,
            maxRadius: radius,
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: 100,
                height: 100
              ),
            ),
          ),
        ),
      ),
    );
  }

}