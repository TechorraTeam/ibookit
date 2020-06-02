import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui_scaffolds.dart';

class BookRide extends StatefulWidget {
  @override
  _BookRideState createState() => _BookRideState();
}

class _BookRideState extends State<BookRide> {
  final TextEditingController _firstnameInputValue = new TextEditingController();
  final TextEditingController _lastnameInputValue = new TextEditingController();
  final TextEditingController _pickupInputValue = new TextEditingController();
  final TextEditingController _destinationInputValue = new TextEditingController();
  final TextEditingController _totalpeopleInputValue = new TextEditingController();
  final TextEditingController _estimatedCostInputValue = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: Container(
              color: Colors.black87,
              padding: EdgeInsets.all(widthStep*40),
              child: ListView(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(widthStep*15),
                    child: Container(
                      color: Colors.white,
                      height: heightStep*70,
                      padding: EdgeInsets.all(widthStep*10),
                      child: Center(
                        child: TextFormField(
                          controller: _firstnameInputValue,
                          autovalidate: true,

                          decoration: InputDecoration(
                              labelText: 'FIRST NAME',
                              icon: Icon(Icons.person),
                            contentPadding: EdgeInsets.all(widthStep*20),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38),
                              borderRadius: BorderRadius.circular(widthStep*20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlueAccent)
                            )
                          ),
                          style: TextStyle(color: Colors.black, fontSize: widthStep*50, fontWeight: FontWeight.w500),

                          textCapitalization: TextCapitalization.sentences,
                          onSaved: (value) {

                          },
                        ),
                      )
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.all(widthStep*17)),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(widthStep*15),
                    child: Container(
                        color: Colors.white,
                        height: heightStep*70,
                        padding: EdgeInsets.all(widthStep*10),
                        child: Center(
                          child: TextFormField(
                            controller: _lastnameInputValue,
                            autovalidate: true,

                            decoration: InputDecoration(
                                labelText: 'LAST NAME',
                                icon: Icon(Icons.person),
                                contentPadding: EdgeInsets.all(widthStep*20),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black38),
                                  borderRadius: BorderRadius.circular(widthStep*20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.lightBlueAccent)
                                )
                            ),
                            style: TextStyle(color: Colors.black, fontSize: widthStep*50, fontWeight: FontWeight.w500),

                            textCapitalization: TextCapitalization.sentences,
                            onSaved: (value) {

                            },
                          ),
                        )
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.all(widthStep*17)),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(widthStep*15),
                    child: Container(
                        color: Colors.white,
                        height: heightStep*70,
                        padding: EdgeInsets.all(widthStep*10),
                        child: Center(
                          child: TextFormField(
                            controller: _pickupInputValue,
                            autovalidate: true,

                            decoration: InputDecoration(
                                labelText: 'PICKUP LOCATION',
                                icon: Icon(Icons.my_location),
                                contentPadding: EdgeInsets.all(widthStep*20),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black38),
                                  borderRadius: BorderRadius.circular(widthStep*20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.lightBlueAccent)
                                )
                            ),
                            style: TextStyle(color: Colors.black, fontSize: widthStep*50, fontWeight: FontWeight.w500),

                            textCapitalization: TextCapitalization.sentences,
                            onSaved: (value) {

                            },
                          ),
                        )
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.all(widthStep*17)),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(widthStep*15),
                    child: Container(
                        color: Colors.white,
                        height: heightStep*70,
                        padding: EdgeInsets.all(widthStep*10),
                        child: Center(
                          child: TextFormField(
                            controller: _destinationInputValue,
                            autovalidate: true,

                            decoration: InputDecoration(
                                labelText: 'DESTINATION LOCATION',
                                icon: Icon(Icons.location_on),
                                contentPadding: EdgeInsets.all(widthStep*20),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black38),
                                  borderRadius: BorderRadius.circular(widthStep*20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.lightBlueAccent)
                                )
                            ),
                            style: TextStyle(color: Colors.black, fontSize: widthStep*50, fontWeight: FontWeight.w500),

                            textCapitalization: TextCapitalization.sentences,
                            onSaved: (value) {

                            },
                          ),
                        )
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.all(widthStep*17)),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(widthStep*15),
                    child: Container(
                        color: Colors.white,
                        height: heightStep*70,
                        padding: EdgeInsets.all(widthStep*10),
                        child: Center(
                          child: TextFormField(
                            controller: _totalpeopleInputValue,
                            autovalidate: true,

                            decoration: InputDecoration(
                                labelText: 'TOTAL PEOPLE',
                                icon: Icon(Icons.people),
                                contentPadding: EdgeInsets.all(widthStep*20),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black38),
                                  borderRadius: BorderRadius.circular(widthStep*20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.lightBlueAccent)
                                )
                            ),
                            style: TextStyle(color: Colors.black, fontSize: widthStep*50, fontWeight: FontWeight.w500),

                            textCapitalization: TextCapitalization.sentences,
                            onSaved: (value) {

                            },
                          ),
                        )
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.all(widthStep*17)),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(widthStep*15),
                    child: Container(
                        color: Colors.white,
                        height: heightStep*70,
                        padding: EdgeInsets.all(widthStep*10),
                        child: Center(
                          child: TextFormField(
                            controller: _estimatedCostInputValue,
                            autovalidate: true,

                            decoration: InputDecoration(
                                labelText: 'ESTIMATED COST',
                                icon: Icon(Icons.attach_money),
                                contentPadding: EdgeInsets.all(widthStep*20),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black38),
                                  borderRadius: BorderRadius.circular(widthStep*20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.lightBlueAccent)
                                )
                            ),
                            style: TextStyle(color: Colors.black, fontSize: widthStep*50, fontWeight: FontWeight.w500),

                            textCapitalization: TextCapitalization.sentences,
                            onSaved: (value) {

                            },
                          ),
                        )
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.all(widthStep*23)),

                  ClipRRect(
                    child: Container(
                      height: heightStep*80,
                      child: RaisedButton(
                        child: Text('BOOK NOW', style: TextStyle(color: Colors.white, fontSize: widthStep*60, fontWeight: FontWeight.w500),),
                        color: Colors.red,
                        onPressed: (){},
                      ),
                    ),
                    borderRadius: BorderRadius.circular(widthStep*30),
                  )

                ],
              ),
            ),
          ),
      ),
    );
  }
}


