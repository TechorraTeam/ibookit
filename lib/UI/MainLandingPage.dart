import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibookit/UI/LiveOrderingPage.dart';
import 'package:ibookit/UI/ui_scaffolds.dart';

class MainLandingScreen extends StatelessWidget {
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
          'iBookIt',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: widthStep*70),
        ),
        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                },
              );
            },
          ),
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.search),
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
                    MaterialPageRoute(builder: (context) => LiveOrderingScreen()),
                  );
                },
                iconSize: widthStep*110,
              );
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: heightStep*10, horizontal: widthStep*10),
                  child: Container(
                    height: heightStep * 220,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(widthStep*30),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/Splash.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            debugPrint('Book it tapped');
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(widthStep*30),
                                bottomRight: Radius.circular(widthStep*30)),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: widthStep*30),
                              child: Center(
                                child: SafeArea(
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        'Ciroc',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: widthStep*60,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        '\$300',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: widthStep*80,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        'off',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: widthStep*50,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding:
                                                 EdgeInsets.only(top: widthStep*10),
                                            child: Text(
                                              'Book it',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: widthStep*50,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(top: widthStep*15),
                                            child: Icon(
                                              Icons.arrow_forward,
                                              color: Colors.red,
                                              size: widthStep*50,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              color: Colors.black87,
                              width: widthStep*300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //What's Hot and the below image and button at the end
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: widthStep*30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "What's Hot",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: widthStep*50,
                            fontWeight: FontWeight.bold),
                      ),
                      RaisedButton(
                        color: Colors.black54,
                        textColor: Colors.white38,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(widthStep*40),
                          side: BorderSide(color: Colors.grey),
                        ),
                        child: Text(
                          'See All',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: widthStep*40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: widthStep*20),
                  child: Container(
                    height: heightStep*400,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/Splash.png'),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Container(
                          height: heightStep*400,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.black, Colors.transparent, Colors.black],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: heightStep*150, bottom: heightStep*10, left: widthStep*20, right: widthStep*20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(Icons.arrow_back_ios),
                                    iconSize: widthStep*70,
                                    color: Colors.white,
                                  ),

                                  Column(
                                    children: <Widget>[
                                      Text(
                                        "Event Name",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: widthStep*60,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "Venue at, 7PM",
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontSize: widthStep*40,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(Icons.arrow_forward_ios),
                                    iconSize: widthStep*70,
                                    color: Colors.white,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        "\$400",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: widthStep*60,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "BOOK IT",
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontSize: widthStep*40,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //top venues
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: widthStep*20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Top Venues",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: widthStep*50,
                            fontWeight: FontWeight.bold),
                      ),
                      RaisedButton(
                        color: Colors.black54,
                        textColor: Colors.white38,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(widthStep*40),
                          side: BorderSide(color: Colors.grey),
                        ),
                        child: Text(
                          'See All',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: widthStep*40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: heightStep*10),
                  child: Container(
                    height: heightStep*400,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/Splash.png'),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Container(
                          height: heightStep*400,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.black, Colors.transparent, Colors.black],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: heightStep*340, bottom: heightStep*10, left: widthStep*40, right: widthStep*40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[

                                  Text(
                                    "Wilgym",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: widthStep*50,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[

                                  Text(
                                    "The Orlbans",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: widthStep*50,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
