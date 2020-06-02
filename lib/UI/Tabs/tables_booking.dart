import 'package:flutter/material.dart';

class TablesBooking extends StatefulWidget {
  @override
  _TablesBookingState createState() => _TablesBookingState();
}

class _TablesBookingState extends State<TablesBooking> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Table Booking', style: TextStyle(
        color: Colors.red,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
      )
      ),
    );
  }
}
