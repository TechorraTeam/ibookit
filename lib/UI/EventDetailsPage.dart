import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibookit/UI/LiveOrderingPage.dart';
import 'package:ibookit/UI/MainLandingPage.dart';
import 'package:ibookit/UI/MessagesPage.dart';
import 'package:ibookit/UI/PromoterLoginPage.dart';
import 'package:ibookit/UI/ui_scaffolds.dart';


class EventDetailsScreen extends StatefulWidget {
  @override
  _EventDetailsScreenState createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  bool displayScreen = false;
  int loginType = 0;
  List<String> displayText = ['Guest Login', 'Express Entry', 'iBookit Bottles'];

  final TextEditingController _firstNameInputValue = new TextEditingController();
  final TextEditingController _secondNameInputValue = new TextEditingController();
  final TextEditingController _thirdNameInputValue = new TextEditingController();
  final TextEditingController _fourthNameInputValue = new TextEditingController();


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
          'Event Details',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: widthStep*60),
        ),
        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
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
                    MaterialPageRoute(builder: (context) => MessageScreen()),
                  );
                },
                iconSize: widthStep*100,
              );
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.black87,
        child: Stack(
          children: <Widget>[
            ListView(
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
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: widthStep*10),
                      child: Container(
                        height: heightStep*320,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: heightStep*80,
                              width: widthStep*900,
                              child: RaisedButton(
                                color: Colors.red,
                                textColor: Colors.white38,
                                onPressed: () {
                                  setState(() {
                                    displayScreen = true;
                                    loginType = 0;
                                  });

                                },
                                shape: StadiumBorder(),
                                child: Text(
                                  'Guest List',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: widthStep*65,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: heightStep*80,
                              width: widthStep*900,
                              child: RaisedButton(
                                color: Colors.deepPurple,
                                textColor: Colors.white38,
                                onPressed: () {
                                  setState(() {
                                    displayScreen = true;
                                    loginType = 1;
                                  });

                                },
                                shape: StadiumBorder(

                                ),
                                child: Text(
                                  'Express Entry',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: widthStep*65,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: heightStep*80,
                              width: widthStep*900,
                              child: RaisedButton(
                                color: Colors.green,
                                textColor: Colors.white38,
                                onPressed: () {
                                  setState(() {
                                    displayScreen = true;
                                    loginType = 2;

                                  });

                                },
                                shape: StadiumBorder(

                                ),
                                child: Text(
                                  'iBookit Bottles',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: widthStep*65,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
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
            displayScreen ? Center(
              child: Container(
                width: widthStep*900,
                height: heightStep*630,
                decoration: BoxDecoration(
                    color: Colors.black87
                ),
                child: Padding(
                  padding: EdgeInsets.all(widthStep*30),
                  child: ListView(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(displayText[loginType], style: TextStyle(color: Colors.white, fontSize: widthStep*70, fontWeight: FontWeight.bold),),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.symmetric(vertical: widthStep*25),),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(widthStep*30),
                                child: Container(
                                  color: Colors.white,
                                  height: heightStep*80,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: widthStep*17, vertical: widthStep*18),
                                    child: TextFormField(
                                      controller: _firstNameInputValue,
                                      autovalidate: true,
                                      decoration: InputDecoration(
                                          labelText: 'FIRST NAME',
                                          icon: Icon(Icons.person),
                                          contentPadding: EdgeInsets.all(widthStep*15),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.white),
                                            borderRadius: BorderRadius.circular(widthStep*10),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.lightBlueAccent)
                                          )
                                      ),
                                      style: TextStyle(color: Colors.black, fontSize: widthStep*65, fontWeight: FontWeight.w500),

                                      textCapitalization: TextCapitalization.sentences,
                                      onSaved: (value) {

                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.symmetric(vertical: widthStep*20),),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(widthStep*30),
                                child: Container(
                                  color: Colors.white,
                                  height: heightStep*80,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: widthStep*17, vertical: widthStep*18),
                                    child: TextFormField(
                                      controller: _secondNameInputValue,
                                      autovalidate: true,
                                      decoration: InputDecoration(
                                          labelText: 'LAST NAME',
                                          icon: Icon(Icons.person),
                                          contentPadding: EdgeInsets.all(widthStep*15),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.white),
                                            borderRadius: BorderRadius.circular(widthStep*10),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.lightBlueAccent)
                                          )
                                      ),
                                      style: TextStyle(color: Colors.black, fontSize: widthStep*65, fontWeight: FontWeight.w500),

                                      textCapitalization: TextCapitalization.sentences,
                                      onSaved: (value) {

                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.symmetric(vertical: widthStep*20),),

                              ClipRRect(
                                borderRadius: BorderRadius.circular(widthStep*30),
                                child: Container(
                                  color: Colors.white,
                                  height: heightStep*80,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: widthStep*17, vertical: widthStep*18),
                                    child: TextFormField(
                                      controller: _thirdNameInputValue,
                                      autovalidate: true,
                                      decoration: InputDecoration(
                                          labelText: 'OTHER NAMES',
                                          icon: Icon(Icons.people),
                                          contentPadding: EdgeInsets.all(widthStep*15),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.white),
                                            borderRadius: BorderRadius.circular(widthStep*10),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.lightBlueAccent)
                                          )
                                      ),
                                      style: TextStyle(color: Colors.black, fontSize: widthStep*65, fontWeight: FontWeight.w500),

                                      textCapitalization: TextCapitalization.sentences,
                                      onSaved: (value) {

                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.symmetric(vertical: widthStep*20),),

                              ClipRRect(
                                borderRadius: BorderRadius.circular(widthStep*30),
                                child: Container(
                                  color: Colors.white,
                                  height: heightStep*80,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: widthStep*17, vertical: widthStep*18),
                                    child: TextFormField(
                                      controller: _fourthNameInputValue,
                                      autovalidate: true,
                                      decoration: InputDecoration(
                                          labelText: 'GENDER',
                                          icon: Icon(Icons.perm_identity),
                                          contentPadding: EdgeInsets.all(widthStep*15),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.white),
                                            borderRadius: BorderRadius.circular(widthStep*10),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.lightBlueAccent)
                                          )
                                      ),
                                      style: TextStyle(color: Colors.black, fontSize: widthStep*65, fontWeight: FontWeight.w500),

                                      textCapitalization: TextCapitalization.sentences,
                                      onSaved: (value) {

                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.symmetric(vertical: widthStep*25),),

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                height: heightStep*80,
                                width: widthStep*400,
                                child: RaisedButton(
                                  color: Colors.redAccent,
                                  textColor: Colors.white38,
                                  onPressed: () {
                                    setState(() {
                                      displayScreen = false;
                                    });

                                  },
                                  shape: StadiumBorder(

                                  ),
                                  child: Text(
                                    'Cancle',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: widthStep*70,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: heightStep*80,
                                width: widthStep*400,
                                child: RaisedButton(
                                  color: Colors.green,
                                  textColor: Colors.white38,
                                  onPressed: () {},
                                  shape: StadiumBorder(

                                  ),
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: widthStep*70,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ) : Container(
              width: 0,
              height: 0,
            ),
          ],
        ),
      ),
    );
  }
}
