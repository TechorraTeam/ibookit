import 'package:flutter/material.dart';

// ignore: camel_case_types
class Bottles_Details extends StatefulWidget {
  @override
  _Bottles_DetailsState createState() => _Bottles_DetailsState();
}

// ignore: camel_case_types
class _Bottles_DetailsState extends State<Bottles_Details> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Bottles details', style: TextStyle(
        color: Colors.red,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),)),
    );
  }
}
