import 'package:flutter/material.dart';
import 'package:ibookit/Services/auth.dart';
import 'package:ibookit/UI/ForgotPasswordPage.dart';
import 'package:ibookit/UI/PromoterLoginPage.dart';
import 'package:ibookit/UI/SignUpPage.dart';

final AuthService _auth = AuthService();
String error = '';
// text field state
String email = '';
String password = '';

final TextEditingController _emailValue =  TextEditingController();
final TextEditingController _passwordValue = TextEditingController();


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double _widthStep, _heightStep;
    _widthStep = MediaQuery.of(context).size.width/375;
    _heightStep = MediaQuery.of(context).size.height/812;
    return Scaffold(
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
                  Text('Login', style: TextStyle(color: Colors.white70, fontSize: _heightStep*44, fontWeight: FontWeight.bold,),),
                  Padding(padding: EdgeInsets.only(top: _heightStep*20),),
                  Text('Log in to your iBookit Account', style: TextStyle(color: Colors.grey, fontSize: _heightStep*22, fontWeight: FontWeight.w400),),
                  Padding(padding: EdgeInsets.only(top: _heightStep*120),),
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
                            onChanged: (value)
                            {
                              setState(() {
                                email = value;
                                print (_emailValue.text);
                              });
                            },
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: _heightStep*16),),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(_widthStep*10),
                        child: Container(
                          width: _widthStep*335,
                          height: _widthStep*45,
                          color: Colors.white,
                          child: TextFormField(
                            controller: _passwordValue,
                            autovalidate: true,
                            obscureText: true,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(_widthStep*14),
                                hintText: 'Enter Password',
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

                            onChanged: (value){
                              setState(() {
                                password = value;
                                print(_passwordValue.text);
                              });
                            },
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: _heightStep*20),),
                      Container(
                        width: _widthStep*250,
                        height: _widthStep*45,
                        child: RaisedButton(
                          color: Colors.blueGrey.shade300,
                          onPressed: () async {
                              try{
                                dynamic result = await _auth.signInWithEmailAndPassword(_emailValue.text, _passwordValue.text);
                                if(result != null) {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => PromoterLoginScreen()));
                                  setState(() {
                                    error = '';
                                  });
                                } else
                                {
                                  setState(() {
                                    error = 'Wrong Credentials';
                                  });
                                }
                              }catch(e){
                                print(e.message);

                              }
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(_widthStep*40),
                            side: BorderSide(color: Colors.black12),
                          ),
                          child: Text(
                            'Login',
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
                      Padding(padding: EdgeInsets.only(top: _heightStep*20),),
                      Container(
                        height: _heightStep*30,
                        child: FlatButton(
                          child: Text('Forgot Password?', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: _heightStep*19),),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen()));
                          },
                        ),
                      ),
                      Container(
                        height: _heightStep*30,
                        child: FlatButton(
                          child: Text('New User? Sign Up', style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold, fontSize: _heightStep*19),),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                          },
                        ),
                      ),
                      Text('--------------OR--------------', style: TextStyle(color: Colors.white70, fontSize: _heightStep*19),),
                      Text('Log in with', style: TextStyle(color: Colors.white70, fontSize: _heightStep*19),),
                      Padding(padding: EdgeInsets.only(top: _heightStep*40),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: _widthStep*100,
                            height: _widthStep*35,
                            child: RaisedButton(
                              color: Colors.blueAccent.shade700,

                              onPressed: () async {
                                bool result = await _auth.loginWithFacebook();
                                if(!result)
                                  print("error logging in with Facebook");
                                else
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => PromoterLoginScreen()));
                              },

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(_widthStep*10),
                                side: BorderSide(color: Colors.black12),
                              ),
                              child: Text(
                                'Facebook',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: _widthStep*14,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: _widthStep*100,
                            height: _widthStep*35,
                            child: RaisedButton(
                              color: Colors.grey.shade100,
                              onPressed: () async {
                                bool res = await _auth.loginWithGoogle();
                                if(!res)
                                  print("error logging in with google");
                                else
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => PromoterLoginScreen()));
                              },

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(_widthStep*10),
                                side: BorderSide(color: Colors.black12),
                              ),
                              child: Text(
                                'Gmail',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: _widthStep*14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )


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


