import 'package:flutter/material.dart';
import 'package:ibookit/UI/BookingScreen.dart';
import 'package:ibookit/UI/DjLoginPage.dart';
import 'package:ibookit/UI/EventDetailsPage.dart';
import 'package:ibookit/UI/GuestListPage.dart';
import 'package:ibookit/UI/MainLandingPage.dart';
import 'package:ibookit/UI/MainLoginPage.dart';
import 'package:ibookit/UI/MessagesPage.dart';
import 'package:ibookit/UI/PassportLoginPage.dart';
import 'package:ibookit/UI/PromoterLoginPage.dart';
import 'package:ibookit/UI/RoomAutomationPage.dart';
import 'package:ibookit/UI/TableBidsPage.dart';
import 'package:ibookit/UI/WaitressLoginPage.dart';

double screenWidth, screenHeight, widthStep, heightStep,sizeValue;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    widthStep = MediaQuery.of(context).size.width/1000;
    heightStep = MediaQuery.of(context).size.height/1000;
    sizeValue = MediaQuery.of(context).size.width/100 * MediaQuery.of(context).size.height/100 * 1/70;

    return LoginScreen();
  }
}
