import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibookit/UI/ui_scaffolds.dart';

// ignore: camel_case_types

class EventsDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Container(
        padding: EdgeInsets.all(widthStep*10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black87,  Colors.red.shade900],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),
        child: ListView.builder(itemBuilder: (BuildContext context, int index){
          return Card(
            elevation: 10.0,
            color: Colors.black54,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/Splash.png'),
                radius: widthStep*100,
              ),
              title: Text("Event Name or Title", style: TextStyle(color: Colors.white),),
              subtitle: Text("Event details, where it is located, and what is happening etc", style: TextStyle(color: Colors.white70),),
              contentPadding: EdgeInsets.all(widthStep*25),
              trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () { Scaffold.of(context).openDrawer(); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SpecificEventDetails()
                ));
              },
            ),
          );
        }, itemCount: 15,),
      ),
    );
  }
}

class SpecificEventDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EVENT DETAILS', style: TextStyle(fontSize: widthStep*55)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(widthStep*30),
        color: Colors.black87,
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(widthStep*20),),
              ClipRRect(
                child: Container(
                  height: heightStep*600,
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Event Details", style: TextStyle(fontSize: widthStep*100),),
                      ],
                    ),
                  ),
                ),
                borderRadius: BorderRadius.circular(widthStep*30),
              ),
              Padding(padding: EdgeInsets.all(widthStep*30),),
              ClipRRect(
                child: Container(
                  height: heightStep*80,
                  width: widthStep*750,
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
    );
  }
}

