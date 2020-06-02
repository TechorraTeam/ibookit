import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:ibookit/Services/auth.dart';

final AuthService _auth = AuthService();
String error = '';
// text field state

final TextEditingController _emailValue =  TextEditingController();

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    double _widthStep, _heightStep;
    _widthStep = MediaQuery.of(context).size.width/375;
    _heightStep = MediaQuery.of(context).size.height/812;
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
          'Sign Up',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: _widthStep*20),
        ),
      ),
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: Container(
          width: _widthStep*375,
          height: _heightStep*812,
          decoration: BoxDecoration(

            gradient: LinearGradient(
              colors: [Colors.black, Colors.black87, Colors.black],
              begin: Alignment.topCenter, end: Alignment.bottomCenter,

            ),
          ),

          child: ListView(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: _heightStep*100),),
              Column(
                children: <Widget>[
                  Text('Recover Password', style: TextStyle(color: Colors.white70, fontSize: _heightStep*44, fontWeight: FontWeight.bold,),),
                  Padding(padding: EdgeInsets.only(top: _heightStep*20),),
                  Text('Enter email and you will receive an email to change your iBookit Account password', style: TextStyle(color: Colors.grey, fontSize: _heightStep*22, fontWeight: FontWeight.w400),),
                  Padding(padding: EdgeInsets.only(top: _heightStep*100),),
                  Column(
                    children: <Widget>[

                      ClipRRect(
                        borderRadius: BorderRadius.circular(_widthStep*10),
                        child: Container(
                          width: _widthStep*335,
                          height: _widthStep*45,
                          color: Colors.white,
                          child: TextFormField(
                            controller: _emailValue,
                            autovalidate: true,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(_widthStep*14),
                                hintText: 'Enter your email address',
                                hintStyle: TextStyle(color: Color(0xffc7c9d1), fontSize: _heightStep*22,),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(_heightStep*15),
                                    borderSide: BorderSide(color: Colors.white)

                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(_heightStep*15),
                                    borderSide: BorderSide(color: Color(0xff0e3178), style: BorderStyle.solid, width: _widthStep*1)
                                )

                            ),
                            style: TextStyle(color: Color(0xff3a3f5c), fontSize: _heightStep*22, fontWeight: FontWeight.w500),

                            textCapitalization: TextCapitalization.sentences,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: _heightStep*16),),
                      Container(
                        width: _widthStep*250,
                        height: _widthStep*45,
                        child: RaisedButton(
                          color: Colors.blueGrey.shade300,
                          onPressed: () async {
                              _auth.resetPasswordRequest(_emailValue.text);
                              setState(() {
                                error = 'Request Sent';
                              });
                              Navigator.pop(context);
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(_widthStep*40),
                            side: BorderSide(color: Colors.black12),
                          ),
                          child: Text(
                            'Send Request',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: _widthStep*14,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        error,
                        style: TextStyle(color: Colors.red, fontSize: 14.0),
                      ),

                    ],
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
