import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ibookit/Services/auth.dart';
import 'package:ibookit/UI/MainLandingPage.dart';
import 'package:ibookit/UI/MainLoginPage.dart';
import 'package:ibookit/UI/TableBidsPage.dart';
import 'package:ibookit/UI/ui_scaffolds.dart';

final AuthService _auth = AuthService();

class PromoterLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () async {
                await _auth.allSignout();
                await _auth.googleSignIn.isSignedIn().then((s) async {
                  if(_auth.account == null)
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  else {
                    print(_auth.account);
                    print ('account is not null so no signout possible');
                  }
                });
              },
            );
          },
        ),
        backgroundColor: Colors.black87,
        centerTitle: true,
        title: Text(
          'Promoter Login',
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
                icon: const Icon(Icons.navigate_next),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TableBidScreen()),
                  );
                },
                iconSize: widthStep*100,
              );
            },
          ),
        ],
      ),
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: Container(
          padding: EdgeInsets.all(widthStep*10),
          color: Colors.black87,
          child: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: widthStep*320,
                        height: heightStep*60,
                        decoration: BoxDecoration(
                          color: Color(0xff816687),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(widthStep*30.0),
                            topLeft: Radius.circular(widthStep*30.0),
                          ),
                        ),
                        child: Center(child: Text('Search', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w400),)),
                      ),
                      Container(
                        child: Text('Insert Venue Scroller  ', style: TextStyle(color: Colors.white, fontSize: widthStep*50, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                  Container(
                    height: heightStep*70,
                    decoration: BoxDecoration(
                      color: Color(0xff816687),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(widthStep*30.0),
                      ),
                    ),
                    child: TextInputField(),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: widthStep*10),),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      width: widthStep*350,
                      height: heightStep*390,
                      color: Colors.black12,
                      padding: EdgeInsets.symmetric(vertical: widthStep*10, horizontal: widthStep*5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ClipRRect(
                            child: Container(
                              width: widthStep*350,
                              height: heightStep*50,
                              child: RaisedButton(
                                child: Text('Guest List', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                                color: Colors.red.shade800,
                                onPressed: (){},
                              ),
                            ),
                            borderRadius: BorderRadius.circular(widthStep*20),
                          ),
                          ClipRRect(
                            child: Container(
                              width: widthStep*350,
                              height: heightStep*50,
                              child: RaisedButton(
                                child: Text('Tables', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                                color: Colors.red.shade800,
                                onPressed: (){},
                              ),
                            ),
                            borderRadius: BorderRadius.circular(widthStep*20),
                          ),
                          ClipRRect(
                            child: Container(
                              width: widthStep*350,
                              height: heightStep*50,
                              child: RaisedButton(
                                child: Text('Message Guest', style: TextStyle(color: Colors.white, fontSize: widthStep*33, fontWeight: FontWeight.bold),),
                                color: Colors.red.shade800,
                                onPressed: (){},
                              ),
                            ),
                            borderRadius: BorderRadius.circular(widthStep*20),
                          ),
                          ClipRRect(
                            child: Container(
                              width: widthStep*350,
                              height: heightStep*50,
                              child: RaisedButton(
                                child: Text('Share Events', style: TextStyle(color: Colors.white, fontSize: widthStep*36, fontWeight: FontWeight.bold),),
                                color: Colors.red.shade800,
                                onPressed: (){},
                              ),
                            ),
                            borderRadius: BorderRadius.circular(widthStep*20),
                          ),
                          ClipRRect(
                            child: Container(
                              width: widthStep*350,
                              height: heightStep*50,
                              child: RaisedButton(
                                child: Text('Track the Reach', style: TextStyle(color: Colors.white, fontSize: widthStep*33, fontWeight: FontWeight.bold),),
                                color: Colors.red.shade800,
                                onPressed: (){},
                              ),
                            ),
                            borderRadius: BorderRadius.circular(widthStep*20),
                          ),

                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: widthStep*10),),
                    Container(
                      width: widthStep*600,
                      height: heightStep*430,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('Sample Text Here', style: TextStyle(color: Colors.blueGrey,fontSize: widthStep*40),),
                          Container(
                            width: widthStep*600,
                            height: heightStep*320,
                            decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(widthStep*20),
                            ),
                          ),
                          ClipRRect(
                            child: Container(
                              width: widthStep*500,
                              height: heightStep*50,
                              child: RaisedButton(
                                child: Text('Submit', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                                color: Colors.red.shade800,
                                onPressed: (){},
                              ),
                            ),
                            borderRadius: BorderRadius.circular(widthStep*20),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: heightStep*600,
                color: Colors.black12,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: heightStep*70,
                      decoration: BoxDecoration(
                        color: Color(0xff816687),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(widthStep*30.0),
                          topLeft: Radius.circular(widthStep*30.0),
                        ),
                      ),
                      child: Center(child: Text('Current', style: TextStyle(color: Colors.white, fontSize: widthStep*50, fontWeight: FontWeight.bold),)),
                    ),
                    Container(
                      height: heightStep*1,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              width: widthStep*320,
                              height: heightStep*60,
                              decoration: BoxDecoration(
                                color: Color(0xff816687),

                              ),
                              child: Center(child: Text('Male', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w600),)),
                            ),
                          ],
                        ),
                        Container(
                          width: widthStep*1,
                          height: heightStep*500,
                          color: Colors.white,
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              width: widthStep*336,
                              height: heightStep*60,
                              decoration: BoxDecoration(
                                color: Color(0xff816687),

                              ),
                              child: Center(child: Text('Reservation', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w600),)),
                            ),
                          ],
                        ),
                        Container(
                          width: widthStep*1,
                          height: heightStep*500,
                          color: Colors.white,
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              width: widthStep*322,
                              height: heightStep*60,
                              decoration: BoxDecoration(
                                color: Color(0xff816687),

                              ),
                              child: Center(child: Text('Female', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w600),)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
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
        borderRadius: BorderRadius.circular(widthStep*20),
        child: Container(
          color: Colors.white,
          child: TextFormField(
            controller: _searchInputValue,
            autovalidate: true,

            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(widthStep*15),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff7A378B)),
                  borderRadius: BorderRadius.circular(widthStep*10),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)
                )
            ),
            style: TextStyle(color: Colors.black, fontSize: widthStep*50, fontWeight: FontWeight.w500),

            textCapitalization: TextCapitalization.sentences,
            onSaved: (value) {

            },
          ),
        ),
      ),
    );
  }
}
