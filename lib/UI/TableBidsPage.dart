import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibookit/UI/MainLandingPage.dart';
import 'package:ibookit/UI/WaitressLoginPage.dart';
import 'package:ibookit/UI/ui_scaffolds.dart';

class TableBidScreen extends StatelessWidget {
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
          'Table Bids',
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
                    MaterialPageRoute(builder: (context) => WaitressLoginScreen()),
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
                        width: widthStep*210,
                        height: heightStep*60,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(widthStep*30.0),
                            topLeft: Radius.circular(widthStep*30.0),
                          ),
                        ),
                        child: Center(child: Text('Live', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w400),)),
                      ),
                      Container(
                        width: widthStep*210,
                        height: heightStep*60,
                        decoration: BoxDecoration(
                          color: Colors.yellow.shade700,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(widthStep*30.0),
                            topLeft: Radius.circular(widthStep*30.0),
                          ),
                        ),
                        child: Center(child: Text('Pending', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w400),)),
                      ),
                      Container(
                        width: widthStep*210,
                        height: heightStep*60,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(widthStep*30.0),
                            topLeft: Radius.circular(widthStep*30.0),
                          ),
                        ),
                        child: Center(child: Text('Sold', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w400),)),
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
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: heightStep*50,
                            decoration: BoxDecoration(
                              color: Colors.red.shade600,
                              borderRadius: BorderRadius.circular(widthStep*10),
                            ),
                            child: Center(
                              child: Text('Cancel', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                            ),
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: widthStep*10),),
                          Container(
                            height: heightStep*190,
                            width: widthStep*350,
                            color: Colors.black12,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text('Current State', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                                Text('Table 52', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                                Text('Customer Name', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                                Text('\$1120 min', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                                Text('Arrived-10:15', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                                Text('Order Details', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),



                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: widthStep*10),),
                          Container(
                            height: heightStep*50,
                            decoration: BoxDecoration(
                              color: Colors.red.shade600,
                              borderRadius: BorderRadius.circular(widthStep*10),
                            ),
                            child: Center(
                              child: Text('Bidding System', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                            ),
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: widthStep*10),),
                          Container(
                            height: heightStep*120,
                            width: widthStep*350,
                            color: Colors.black12,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text('Name Online', style: TextStyle(color: Colors.green, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('Time', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                                    Text('Text', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),

                                  ],
                                ),

                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: widthStep*10),),
                          Container(
                            height: heightStep*190,
                            width: widthStep*350,
                            color: Colors.black12,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text('Current Bid', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                                Text('\$900 min', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                                Text('Customer Name', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                                Text('Points Number', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                                Text('Arrived-12:15', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                                Text('4 Male 2 Female', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),



                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: widthStep*10),),
                          Container(
                            height: heightStep*250,
                            width: widthStep*350,
                            color: Colors.black12,
                            child: Column(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.symmetric(vertical: widthStep*10),),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: widthStep*175,
                                      height: heightStep*50,
                                      child: RaisedButton(
                                        child: Text('Accept', style: TextStyle(color: Colors.white, fontSize: widthStep*22, fontWeight: FontWeight.bold),),
                                        onPressed: (){},
                                        color: Colors.green,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(widthStep*30.0),
                                            bottomLeft: Radius.circular(widthStep*30.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: widthStep*175,
                                      height: heightStep*50,
                                      child: RaisedButton(
                                        child: Text('Decline', style: TextStyle(color: Colors.white, fontSize: widthStep*22, fontWeight: FontWeight.bold),),
                                        onPressed: (){},
                                        color: Colors.red,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(widthStep*30.0),
                                            bottomRight: Radius.circular(widthStep*30.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.symmetric(vertical: widthStep*10),),
                                Container(
                                  width: widthStep*350,
                                  height: heightStep*60,
                                  child: TextInputField(),
                                ),
                                Container(
                                  width: widthStep*350,
                                  height: heightStep*60,
                                  child: TextInputField(),
                                ),
                                Padding(padding: EdgeInsets.symmetric(vertical: widthStep*10),),
                                ClipRRect(
                                  child: Container(
                                    width: widthStep*300,
                                    height: heightStep*40,
                                    child: RaisedButton(
                                      child: Text('Bid Now', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                                      color: Colors.red,
                                      onPressed: (){},
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(widthStep*30),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: widthStep*10),),
                    Container(
                      width: widthStep*600,
                      height: heightStep*900,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/tables_bid.PNG'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(widthStep*20),
                      ),
                    )
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

