import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibookit/UI/BookingScreen.dart';
import 'ui_scaffolds.dart';

class EmployeeLoginScreen extends StatelessWidget {
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
          'EMPLOYEE LOGIN',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: widthStep*50),

        ),
        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              );
            },
          ),

          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.navigate_next),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookingScreen()),
                  );
                },
                iconSize: widthStep*100,
              );
            },
          ),
        ],
      ),
      body: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/Splash.png'),
                  fit: BoxFit.cover,
                )

              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: heightStep*200),
              child: Container(
                width: widthStep*1000,
                height: heightStep*550,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(widthStep*40),
                          child: Container(
                            width: widthStep*450,
                            height: heightStep*170,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/Splash.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                            child: RaisedButton(
                              onPressed: (){
                                debugPrint('Pressed Button');
                              },
                              color: Colors.deepPurple.shade300.withOpacity(0.9),
                              child: Text("FIND FRIENDS", style: TextStyle(
                                color: Colors.white,
                                fontSize: widthStep*60,
                                fontWeight: FontWeight.w400,
                              ),),
                            ),
                          ),
                        ),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(widthStep*40),
                          child: Container(
                            width: widthStep*450,
                            height: heightStep*170,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/Splash.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                            child: RaisedButton(
                              onPressed: (){
                                debugPrint('Pressed Button');
                              },
                              color: Colors.lime.shade400.withOpacity(0.9),
                              child: Text("MESSAGER ", style: TextStyle(
                                color: Colors.white,
                                fontSize: widthStep*60,
                                fontWeight: FontWeight.w400,
                              ),),
                            ),
                          ),
                        ),

                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    ),
                    Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(widthStep*40),
                          child: Container(
                            width: widthStep*450,
                            height: heightStep*170,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/Splash.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                            child: RaisedButton(
                              onPressed: (){
                                debugPrint('Pressed Button');
                              },
                              color: Colors.blueGrey.withOpacity(0.9),
                              child: Text("TABLES ", style: TextStyle(
                                color: Colors.white,
                                fontSize: widthStep*60,
                                fontWeight: FontWeight.w400,
                              ),textAlign: TextAlign.start,),
                            ),
                          ),
                        ),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(widthStep*40),
                          child: Container(
                            width: widthStep*450,
                            height: heightStep*170,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/Splash.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                            child: RaisedButton(
                              onPressed: (){
                                debugPrint('Pressed Button');
                              },
                              color: Colors.orangeAccent.withOpacity(0.9),
                              child: Text("PASSPORT ", style: TextStyle(
                                color: Colors.white,
                                fontSize: widthStep*60,
                                fontWeight: FontWeight.w400,
                              ),),
                            ),
                          ),
                        ),

                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    ),
                    Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(widthStep*40),
                          child: Container(
                            width: widthStep*450,
                            height: heightStep*170,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/Splash.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                            child: RaisedButton(
                              onPressed: (){
                                debugPrint('Pressed Button');
                              },
                              color: Colors.redAccent.withOpacity(0.9),
                              child: Text("CURRENT TRAFFIC", style: TextStyle(
                                color: Colors.white,
                                fontSize: widthStep*60,
                                fontWeight: FontWeight.w400,
                              ),),
                            ),
                          ),
                        ),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(widthStep*40),
                          child: Container(
                            width: widthStep*450,
                            height: heightStep*170,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/Splash.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                            child: RaisedButton(
                              onPressed: (){
                                debugPrint('Pressed Button');
                              },
                              color: Colors.blueAccent.withOpacity(0.9),
                              child: Text("GUEST CHECKIN", style: TextStyle(
                                color: Colors.white,
                                fontSize: widthStep*60,
                                fontWeight: FontWeight.w400,
                              ),),
                            ),
                          ),
                        ),

                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
            ),
            Container(
              width: screenWidth,
              height: heightStep*80,
              child: SafeArea(
                child: Row(

                  children: <Widget>[
                    Container(
                      width: screenWidth*2/3,
                      height: heightStep*80,
                      child: RaisedButton(
                        color: Colors.black87,
                        onPressed: (){
                          debugPrint("Change Password");
                        },
                        child: Text ('CHANGE PASSWORD', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                      ),
                    ),
                    Container(
                      width: screenWidth/3,
                      height: heightStep*80,
                      child: RaisedButton(
                        color: Colors.red.shade900,
                        onPressed: (){
                          debugPrint("Log Out");
                        },
                        child: Text ('LOG OUT', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),

                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
}
