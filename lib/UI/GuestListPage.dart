import 'package:flutter/material.dart';
import 'package:ibookit/UI/PassportLoginPage.dart';
import 'package:ibookit/UI/RoomAutomationPage.dart';
import 'package:ibookit/UI/WaitressLoginPage.dart';
import 'package:ibookit/UI/ui_scaffolds.dart';

class GuestListScreen extends StatelessWidget {
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
          'Guest List',
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
                    MaterialPageRoute(builder: (context) => PassportLoginScreen()),
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
        padding: EdgeInsets.symmetric(horizontal: widthStep*20),
        child: ListView(
          children: <Widget>[
            Container(
              height: heightStep*60,
              width: widthStep*800,
              padding: EdgeInsets.symmetric(horizontal: widthStep*20),
              decoration: BoxDecoration(
                color: Color(0xff816687),
                borderRadius: BorderRadius.circular(widthStep*20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Name',style: TextStyle(fontSize: widthStep*35, fontWeight: FontWeight.bold, color: Colors.white54),),
                      Text('Customer Name',style: TextStyle(fontSize: widthStep*30, fontWeight: FontWeight.bold, color: Colors.white),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('M/F',style: TextStyle(fontSize: widthStep*35, fontWeight: FontWeight.bold, color: Colors.white54),),
                      Text('Female',style: TextStyle(fontSize: widthStep*30, fontWeight: FontWeight.bold, color: Colors.white),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('#of guests',style: TextStyle(fontSize: widthStep*35, fontWeight: FontWeight.bold, color: Colors.white54),),
                      Text('5',style: TextStyle(fontSize: widthStep*30, fontWeight: FontWeight.bold, color: Colors.white),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Group/Promoter',style: TextStyle(fontSize: widthStep*35, fontWeight: FontWeight.bold, color: Colors.white54),),
                      Text('Promoter',style: TextStyle(fontSize: widthStep*30, fontWeight: FontWeight.bold, color: Colors.white),),
                    ],
                  ),

                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*20),),
            Container(
              height: heightStep*230,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Builder(
                          builder: (BuildContext context) {
                            return IconButton(
                              icon: const Icon(Icons.arrow_back_ios),
                              color: Colors.white,

                              onPressed: () {
                              },
                            );
                          },
                        ),
                        RaisedButton(
                          color: Colors.black54,
                          textColor: Colors.white38,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(widthStep*40),
                            side: BorderSide(color: Colors.black12),
                          ),
                          child: Text(
                            'Table Checkin',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: widthStep*30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black38,
                    width: widthStep*650,
                    height: heightStep*220,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Builder(
                          builder: (BuildContext context) {
                            return IconButton(
                              icon: const Icon(Icons.arrow_back_ios),
                              color: Colors.white54,
                              iconSize: widthStep*50,

                              onPressed: () {
                              },
                            );
                          },
                        ),
                        Container(
                          width: widthStep*180,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Customer Name 1',style: TextStyle(fontSize: widthStep*35, fontWeight: FontWeight.bold, color: Colors.white54),),
                              Padding(padding: EdgeInsets.symmetric(vertical: widthStep*10),),
                              Text('Female',style: TextStyle(fontSize: widthStep*30, fontWeight: FontWeight.bold, color: Colors.white38),),

                            ],
                          ),
                        ),
                        Container(
                          width: widthStep*230,
                          height: heightStep*150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/Splash.png'),
                              fit: BoxFit.cover,
                            )
                          ),
                        ),
                        Builder(
                          builder: (BuildContext context) {
                            return IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              color: Colors.white54,
                              iconSize: widthStep*50,
                              onPressed: () {
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*20),),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: widthStep*315,
                        height: heightStep*60,
                        decoration: BoxDecoration(
                          color: Color(0xff816687),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(widthStep*30.0),
                            topLeft: Radius.circular(widthStep*30.0),
                          ),
                        ),
                        child: Center(child: Text('Names', style: TextStyle(color: Colors.white54, fontSize: widthStep*40, fontWeight: FontWeight.bold),)),
                      ),
                      Container(
                        width: widthStep*315,
                        height: heightStep*60,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(widthStep*30.0),
                            topLeft: Radius.circular(widthStep*30.0),
                          ),
                        ),
                        child: Center(child: Text('ADD', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),)),
                      ),
                      Container(
                        width: widthStep*315,
                        height: heightStep*60,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(widthStep*30.0),
                            topLeft: Radius.circular(widthStep*30.0),
                          ),
                        ),
                        child: Center(child: Text('SUBTRACT', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),)),
                      ),
                    ],
                  ),
                  Container(
                    height: heightStep*60,
                    decoration: BoxDecoration(
                      color: Color(0xff816687),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(widthStep*30.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*20),),
            Container(
              height: heightStep*300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: widthStep*450,
                    height: heightStep*250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Total Check in', style: TextStyle(color: Color(0xff816687), fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                        TextInputField(),
                        Text('Bottle Check in', style: TextStyle(color: Color(0xff816687), fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                        TextInputField(),
                      ],
                    ),
                  ),
                  Container(
                    width: widthStep*450,
                    height: heightStep*250,
                    color: Colors.black38,
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*20),),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: widthStep*315,
                        height: heightStep*60,
                        decoration: BoxDecoration(
                          color: Color(0xff816687),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(widthStep*30.0),
                            topLeft: Radius.circular(widthStep*30.0),
                          ),
                        ),
                        child: Center(child: Text('- Subtract', style: TextStyle(color: Colors.white54, fontSize: widthStep*40, fontWeight: FontWeight.bold),)),
                      ),
                      Padding(padding: EdgeInsets.only(right: widthStep*20),),

                      Container(
                        width: widthStep*315,
                        height: heightStep*60,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(widthStep*30.0),
                            topLeft: Radius.circular(widthStep*30.0),
                          ),
                        ),
                        child: Center(child: Text('+ ADD', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),)),
                      ),
                    ],
                  ),
                  Container(
                    height: heightStep*200,
                    decoration: BoxDecoration(
                      color: Color(0xff816687),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(widthStep*30.0),
                      ),
                    ),

                    child: Padding(
                      padding: EdgeInsets.all(widthStep*30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Few Text Here',style: TextStyle(fontSize: widthStep*45, fontWeight: FontWeight.bold, color: Colors.white),),
                              Text('Total',style: TextStyle(fontSize: widthStep*45, fontWeight: FontWeight.bold, color: Colors.white),),

                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Amount',style: TextStyle(fontSize: widthStep*45, fontWeight: FontWeight.bold, color: Colors.white),),
                              Text('1700',style: TextStyle(fontSize: widthStep*45, fontWeight: FontWeight.bold, color: Colors.white),),

                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
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

    return Padding(
      padding: EdgeInsets.all(widthStep*20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(widthStep*30),
        child: Container(
          height: heightStep*50,
          color: Colors.white12,
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
            style: TextStyle(color: Colors.black, fontSize: widthStep*40, fontWeight: FontWeight.w500),

            textCapitalization: TextCapitalization.sentences,
            onSaved: (value) {

            },
          ),
        ),
      ),
    );
  }
}

