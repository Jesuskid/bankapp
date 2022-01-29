import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xffCADCED);

List <BoxShadow> customShadow = [
  BoxShadow(
    color: Colors.white.withOpacity(0.5),
    spreadRadius: -5,
    offset: Offset(-5, -5),
    blurRadius: 30
  ),
  BoxShadow(
      color: Colors.blue.shade900.withOpacity(0.2),
      spreadRadius: 2,
      offset: Offset(7, 7),
      blurRadius: 20
  )
];