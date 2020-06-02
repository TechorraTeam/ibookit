import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibookit/UI/DjLoginPage.dart';
import 'package:ibookit/UI/MainLandingPage.dart';
import 'package:ibookit/UI/ui_scaffolds.dart';

class WaitressLoginScreen extends StatelessWidget {
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
          'Waitress Login',
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
                    MaterialPageRoute(builder: (context) => DjLoginScreen()),
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
            Container(
              height: heightStep*270,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/waitressImage.PNG'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(widthStep*20),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: widthStep*10),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            color: Color(0xff54632C),
                            borderRadius: BorderRadius.circular(widthStep*10),
                          ),
                          child: Center(
                            child: Text('Recent', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: widthStep*10),),
                        Container(
                          height: heightStep*150,
                          width: widthStep*350,
                          color: Colors.black12,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('Incoming', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                              Text('Table 101', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                              Text('Customer Name', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                              Text('\$1120 min', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),)


                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: widthStep*10),),
                        Container(
                          height: heightStep*150,
                          width: widthStep*350,
                          color: Colors.black12,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('Order Request', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                              Text('Table 100', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                              Text('Customer Name', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                              Text('Customer Name', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),)


                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: widthStep*10),),
                        Container(
                          height: heightStep*50,
                          decoration: BoxDecoration(
                            color: Color(0xff54632C),
                            borderRadius: BorderRadius.circular(widthStep*10),
                          ),
                          child: Center(
                            child: Text('Order Items', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: widthStep*10),),
                        Container(
                          height: heightStep*150,
                          width: widthStep*350,
                          color: Colors.black12,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('Item Name  \$100', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                              Text('Item Name  \$100', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                              Text('Item Name  \$100', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                              Text('Item Name  \$100', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),)


                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: widthStep*10),),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: widthStep*10),),
                  Container(
                    width: widthStep*600,
                    height: heightStep*600,
                    color: Colors.black12,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              Text('Ticket #123456789', style: TextStyle(color: Colors.white, fontSize: widthStep*50, fontWeight: FontWeight.w500),),
                              Text('Customer Name', style: TextStyle(color: Colors.white, fontSize: widthStep*45, fontWeight: FontWeight.w500),),
                              Text('\$1000 min Spend', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w400),),
                              Padding(padding: EdgeInsets.only(top: widthStep*30),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Current Spend', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w400),),
                                  Text('\$1200', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w400),),

                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Remaining Spend', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w400),),
                                  Text('\$800', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w400),),

                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: widthStep*600,
                          height: heightStep*150,
                          decoration: BoxDecoration(
                            color: Color(0xff7A378B),
                            borderRadius: BorderRadius.circular(widthStep*20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('Product', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                                  Text('Name', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),

                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('Qty', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                                  Text('2', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),

                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('Wait-time', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                                  Text('5 min', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),

                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('Status', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                                  Text('Delivered', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),

                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Text('Order Payments', style: TextStyle(color: Colors.white, fontSize: widthStep*45, fontWeight: FontWeight.w500),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Cash Amounts', style: TextStyle(color: Colors.white, fontSize: widthStep*35, fontWeight: FontWeight.w500),),
                                  Container(
                                    width: widthStep*350,
                                    height: heightStep*60,
                                    child: TextInputField(),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Others', style: TextStyle(color: Colors.white, fontSize: widthStep*35, fontWeight: FontWeight.w500),),
                                  Container(
                                    width: widthStep*350,
                                    height: heightStep*60,
                                    child: TextInputField(),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Tips', style: TextStyle(color: Colors.white, fontSize: widthStep*35, fontWeight: FontWeight.w500),),
                                  Container(
                                    width: widthStep*350,
                                    height: heightStep*60,
                                    child: TextInputField(),
                                  )
                                ],
                              ),
                              Padding(padding: EdgeInsets.symmetric(vertical: widthStep*10),),

                              ClipRRect(
                                child: Container(
                                  width: widthStep*300,
                                  height: heightStep*40,
                                  child: RaisedButton(
                                    child: Text('Close Out', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                                    color: Colors.red,
                                    onPressed: (){},
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(widthStep*30),
                              ),
                            ],
                          )
                        ),

                      ],
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

