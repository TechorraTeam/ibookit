import 'package:flutter/material.dart';
import 'package:ibookit/UI/RoomAutomationPage.dart';
import 'package:ibookit/UI/WaitressLoginPage.dart';
import 'package:ibookit/UI/ui_scaffolds.dart';

class PassportLoginScreen extends StatelessWidget {
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
          'Passport Login',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: widthStep*50),
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
                icon: const Icon(Icons.navigate_next),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RoomAutomationScreen()),
                  );
                },
                iconSize: widthStep*100,
              );
            },
          ),
        ],
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: widthStep*10, vertical: heightStep*10),
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ClipRRect(
                      child: Container(
                        width: widthStep*320,
                        height: heightStep*60,
                        child: RaisedButton(
                          child: Text('TABS', style: TextStyle(color: Colors.white, fontSize: widthStep*35, fontWeight: FontWeight.bold),),
                          color: Colors.red.shade800,
                          onPressed: (){},
                        ),
                      ),
                      borderRadius: BorderRadius.circular(widthStep*10),
                    ),
                    ClipRRect(
                      child: Container(
                        width: widthStep*320,
                        height: heightStep*60,
                        child: RaisedButton(
                          child: Text('PASSPORT', style: TextStyle(color: Colors.white, fontSize: widthStep*35, fontWeight: FontWeight.bold),),
                          color: Colors.red.shade800,
                          onPressed: (){},
                        ),
                      ),
                      borderRadius: BorderRadius.circular(widthStep*10),
                    ),
                    ClipRRect(
                      child: Container(
                        width: widthStep*320,
                        height: heightStep*60,
                        child: RaisedButton(
                          child: Text('IBOOKIT LIVE', style: TextStyle(color: Colors.white, fontSize: widthStep*35, fontWeight: FontWeight.bold),),
                          color: Colors.red.shade800,
                          onPressed: (){},
                        ),
                      ),
                      borderRadius: BorderRadius.circular(widthStep*10),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(bottom: heightStep*10),),
                ClipRRect(
                  borderRadius: BorderRadius.circular(widthStep*10),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: widthStep*20),
                    height: heightStep*50,
                    color: Colors.black12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('My Events', style: TextStyle(color: Colors.white30, fontSize: widthStep*30, fontWeight: FontWeight.bold),),
                        Text('Rewards', style: TextStyle(color: Colors.white30, fontSize: widthStep*30, fontWeight: FontWeight.bold),),
                        Text('My Venues', style: TextStyle(color: Colors.white30, fontSize: widthStep*30, fontWeight: FontWeight.bold),),
                        Text('My DJs', style: TextStyle(color: Colors.white30, fontSize: widthStep*30, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
                TextInputField(),
                Padding(padding: EdgeInsets.only(bottom: heightStep*10),),
                Text('Favorite DJs', style: TextStyle(color: Colors.white30, fontSize: widthStep*40, fontWeight: FontWeight.w600),),
                Padding(padding: EdgeInsets.only(bottom: heightStep*10),),
                Container(
                  height: heightStep*200,
                  padding: EdgeInsets.all(widthStep*15),
                  color: Colors.black26,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: widthStep*420,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/Splash.png'),
                            fit: BoxFit.fill
                          )
                        ),
                      ),
                      Container(
                        width: widthStep*270,
                        height: heightStep*170,
                        color: Colors.black12,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('DJ Name', style: TextStyle(color: Colors.white30, fontSize: widthStep*30, fontWeight: FontWeight.w600),),
                            Text('Artists', style: TextStyle(color: Colors.white30, fontSize: widthStep*30, fontWeight: FontWeight.w600),),
                            Text('Upcoming Events', style: TextStyle(color: Colors.white30, fontSize: widthStep*30, fontWeight: FontWeight.w600),),
                            Text('Few Text', style: TextStyle(color: Colors.white30, fontSize: widthStep*30, fontWeight: FontWeight.w600),),
                            Text('Few More Text', style: TextStyle(color: Colors.white30, fontSize: widthStep*30, fontWeight: FontWeight.w600),),

                          ],
                        ),
                      ),
                      Container(
                        width: widthStep*250,
                        height: heightStep*170,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            ClipRRect(
                              child: Container(
                                width: widthStep*220,
                                height: heightStep*35,
                                child: RaisedButton(
                                  child: Text('Place Bid', style: TextStyle(color: Colors.white, fontSize: widthStep*30, fontWeight: FontWeight.bold),),
                                  color: Colors.red.shade800,
                                  onPressed: (){},
                                ),
                              ),
                              borderRadius: BorderRadius.circular(widthStep*10),
                            ),
                            ClipRRect(
                              child: Container(
                                width: widthStep*220,
                                height: heightStep*35,
                                child: RaisedButton(
                                  child: Text('Artist', style: TextStyle(color: Colors.white, fontSize: widthStep*30, fontWeight: FontWeight.bold),),
                                  color: Colors.red.shade800,
                                  onPressed: (){},
                                ),
                              ),
                              borderRadius: BorderRadius.circular(widthStep*10),
                            ),
                            ClipRRect(
                              child: Container(
                                width: widthStep*220,
                                height: heightStep*35,
                                child: RaisedButton(
                                  child: Text('Events', style: TextStyle(color: Colors.white, fontSize: widthStep*30, fontWeight: FontWeight.bold),),
                                  color: Colors.red.shade800,
                                  onPressed: (){},
                                ),
                              ),
                              borderRadius: BorderRadius.circular(widthStep*10),
                            ),
                            ClipRRect(
                              child: Container(
                                width: widthStep*220,
                                height: heightStep*35,
                                child: RaisedButton(
                                  child: Text('Share', style: TextStyle(color: Colors.white, fontSize: widthStep*30, fontWeight: FontWeight.bold),),
                                  color: Colors.red.shade800,
                                  onPressed: (){},
                                ),
                              ),
                              borderRadius: BorderRadius.circular(widthStep*10),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: heightStep*10),),
                Container(
                  height: heightStep*200,
                  padding: EdgeInsets.all(widthStep*15),
                  color: Colors.black26,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: widthStep*420,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/Splash.png'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                      Container(
                        width: widthStep*270,
                        height: heightStep*170,
                        color: Colors.black12,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('DJ Name', style: TextStyle(color: Colors.white30, fontSize: widthStep*30, fontWeight: FontWeight.w600),),
                            Text('Artists', style: TextStyle(color: Colors.white30, fontSize: widthStep*30, fontWeight: FontWeight.w600),),
                            Text('Upcoming Events', style: TextStyle(color: Colors.white30, fontSize: widthStep*30, fontWeight: FontWeight.w600),),
                            Text('Few Text', style: TextStyle(color: Colors.white30, fontSize: widthStep*30, fontWeight: FontWeight.w600),),
                            Text('Few More Text', style: TextStyle(color: Colors.white30, fontSize: widthStep*30, fontWeight: FontWeight.w600),),

                          ],
                        ),
                      ),
                      Container(
                        width: widthStep*250,
                        height: heightStep*170,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            ClipRRect(
                              child: Container(
                                width: widthStep*220,
                                height: heightStep*35,
                                child: RaisedButton(
                                  child: Text('Place Bid', style: TextStyle(color: Colors.white, fontSize: widthStep*30, fontWeight: FontWeight.bold),),
                                  color: Colors.red.shade800,
                                  onPressed: (){},
                                ),
                              ),
                              borderRadius: BorderRadius.circular(widthStep*10),
                            ),
                            ClipRRect(
                              child: Container(
                                width: widthStep*220,
                                height: heightStep*35,
                                child: RaisedButton(
                                  child: Text('Artist', style: TextStyle(color: Colors.white, fontSize: widthStep*30, fontWeight: FontWeight.bold),),
                                  color: Colors.red.shade800,
                                  onPressed: (){},
                                ),
                              ),
                              borderRadius: BorderRadius.circular(widthStep*10),
                            ),
                            ClipRRect(
                              child: Container(
                                width: widthStep*220,
                                height: heightStep*35,
                                child: RaisedButton(
                                  child: Text('Events', style: TextStyle(color: Colors.white, fontSize: widthStep*30, fontWeight: FontWeight.bold),),
                                  color: Colors.red.shade800,
                                  onPressed: (){},
                                ),
                              ),
                              borderRadius: BorderRadius.circular(widthStep*10),
                            ),
                            ClipRRect(
                              child: Container(
                                width: widthStep*220,
                                height: heightStep*35,
                                child: RaisedButton(
                                  child: Text('Share', style: TextStyle(color: Colors.white, fontSize: widthStep*30, fontWeight: FontWeight.bold),),
                                  color: Colors.red.shade800,
                                  onPressed: (){},
                                ),
                              ),
                              borderRadius: BorderRadius.circular(widthStep*10),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: heightStep*40),),

                ClipRRect(
                  child: Container(
                    width: widthStep*800,
                    height: heightStep*80,
                    child: RaisedButton(
                      child: Text('BOOK A TABLE', style: TextStyle(color: Colors.white, fontSize: widthStep*45, fontWeight: FontWeight.bold),),
                      color: Colors.red.shade800,
                      onPressed: (){},
                    ),
                  ),
                  borderRadius: BorderRadius.circular(widthStep*10),
                ),
                Padding(padding: EdgeInsets.only(bottom: heightStep*15),),
                ClipRRect(
                  child: Container(
                    width: widthStep*800,
                    height: heightStep*80,
                    child: RaisedButton(
                      child: Text('REQUEST DJ FOR PRIVATE EVENT', style: TextStyle(color: Colors.white, fontSize: widthStep*45, fontWeight: FontWeight.bold),),
                      color: Colors.red.shade800,
                      onPressed: (){},
                    ),
                  ),
                  borderRadius: BorderRadius.circular(widthStep*10),
                ),

              ],
            ),
          ],
        ),
      ),

    );
  }
}

class TextInputField extends StatefulWidget {
  @override
  _TextInputFieldState createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  final TextEditingController _searchInputValue = new TextEditingController();
  @override
  Widget build(BuildContext context) {

    return ClipRRect(
      borderRadius: BorderRadius.circular(widthStep*20),
      child: Container(
        height: heightStep*50,
        color: Colors.white,
        child: TextFormField(
          controller: _searchInputValue,
          autovalidate: true,

          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(widthStep*15),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widthStep*10),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)
              )
          ),
          style: TextStyle(color: Colors.black, fontSize: widthStep*45, fontWeight: FontWeight.w500),

          textCapitalization: TextCapitalization.sentences,
          onSaved: (value) {

          },
        ),
      ),
    );
  }
}
