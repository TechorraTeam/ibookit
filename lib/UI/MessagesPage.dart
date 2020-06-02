import 'package:flutter/material.dart';
import 'package:ibookit/UI/DjLoginPage.dart';
import 'package:ibookit/UI/GuestListPage.dart';
import 'package:ibookit/UI/PromoterLoginPage.dart';
import 'package:ibookit/UI/ui_scaffolds.dart';


class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
        backgroundColor: Colors.black87,
        centerTitle: true,
        title: Text(
          'Messages',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: widthStep*60),
        ),
        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.navigate_next),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GuestListScreen()),
                  );
                },
                iconSize: widthStep*110,
              );
            },
          ),
        ],
      ),

      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF330000), Color(0xFF000033)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20*widthStep, vertical: 20*heightStep),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 460*widthStep,
                      height: 75*heightStep,
                      child: RaisedButton(
                        color: Colors.red.shade900,
                        textColor: Colors.white38,
                        onPressed: () {},
                        shape: StadiumBorder(

                        ),
                        child: Text(
                          'Compose Messages',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: widthStep*35,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 460*widthStep,
                      height: 75*heightStep,
                      child: RaisedButton(
                        color: Colors.red.shade900,
                        textColor: Colors.white38,
                        onPressed: () {},
                        shape: StadiumBorder(

                        ),
                        child: Text(
                          'Staff Messages',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: widthStep*35,
                          ),
                        ),
                      ),
                    ),
                ],
                ),
              ],
          ),
        )
      ),
    );
  }
}

