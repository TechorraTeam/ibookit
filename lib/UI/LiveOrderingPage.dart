import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibookit/UI/EmployeeLogin.dart';
import 'package:ibookit/UI/ui_scaffolds.dart';

class LiveOrderingScreen extends StatelessWidget {
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
          'Live Ordering',
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
                    MaterialPageRoute(builder: (context) => EmployeeLoginScreen()),
                  );
                },
                iconSize: widthStep*110,
              );
            },
          ),
        ],
      ),

      body: Container(
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: heightStep*15, horizontal: widthStep*7),
                  child: Container(
                    height: heightStep*200,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(widthStep*20),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/Splash.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.arrow_back_ios),
                              iconSize: widthStep*70,
                              color: Colors.white,
                            ),
                            Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    debugPrint('Book it tapped');
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: heightStep*8),
                                    child: Center(
                                      child: SafeArea(
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              'Ciroc',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: widthStep*50,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Text(
                                              '\$300',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: widthStep*70,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Text(
                                              'off',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: widthStep*40,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                  EdgeInsets.only(top: widthStep*15),
                                                  child: Text(
                                                    'Book it',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: widthStep*45,
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
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.arrow_forward_ios),
                                  iconSize: widthStep*70,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                //List of products
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: widthStep*20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "List of Products",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: widthStep*50,
                            fontWeight: FontWeight.bold),
                      ),
                      RaisedButton(
                        color: Colors.black54,
                        textColor: Colors.white38,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(widthStep*40),
                          side: BorderSide(color: Colors.grey),
                        ),
                        child: Text(
                          'See All',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: widthStep*40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: heightStep*10, horizontal: widthStep*10),
                  child: Container(
                    height: heightStep*300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: widthStep*10),
                          child: Container(
                            width: widthStep*300,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/Splash.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Colors.black, Colors.transparent, Colors.black],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    )
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: heightStep*14),
                                        child: Column(
                                          children: <Widget>[
                                            Text('Product1', style: TextStyle(color: Colors.white, fontSize: widthStep*45, fontWeight: FontWeight.w500),),
                                            Text('\$1200', style: TextStyle(color: Colors.white, fontSize: widthStep*35, fontWeight: FontWeight.w400),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: heightStep*14),
                                        child: Container(
                                          width: widthStep*150,
                                          height: heightStep*30,
                                          child: RaisedButton(
                                            color: Colors.red,
                                            textColor: Colors.white38,
                                            onPressed: () {},
                                            shape: StadiumBorder(

                                            ),
                                            child: Text(
                                              'View',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: widthStep*30,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: widthStep*10),
                          child: Container(
                            width: widthStep*300,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/Splash.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [Colors.black, Colors.transparent, Colors.black],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      )
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: heightStep*14),
                                        child: Column(
                                          children: <Widget>[
                                            Text('Product1', style: TextStyle(color: Colors.white, fontSize: widthStep*45, fontWeight: FontWeight.w500),),
                                            Text('\$1200', style: TextStyle(color: Colors.white, fontSize: widthStep*35, fontWeight: FontWeight.w400),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: heightStep*14),
                                        child: Container(
                                          width: widthStep*150,
                                          height: heightStep*30,
                                          child: RaisedButton(
                                            color: Colors.red,
                                            textColor: Colors.white38,
                                            onPressed: () {},
                                            shape: StadiumBorder(

                                            ),
                                            child: Text(
                                              'View',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: widthStep*30,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: widthStep*10),
                          child: Container(
                            width: widthStep*300,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/Splash.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [Colors.black, Colors.transparent, Colors.black],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      )
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: heightStep*14),
                                        child: Column(
                                          children: <Widget>[
                                            Text('Product1', style: TextStyle(color: Colors.white, fontSize: widthStep*45, fontWeight: FontWeight.w500),),
                                            Text('\$1200', style: TextStyle(color: Colors.white, fontSize: widthStep*35, fontWeight: FontWeight.w400),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: heightStep*14),
                                        child: Container(
                                          width: widthStep*150,
                                          height: heightStep*30,
                                          child: RaisedButton(
                                            color: Colors.red,
                                            textColor: Colors.white38,
                                            onPressed: () {},
                                            shape: StadiumBorder(

                                            ),
                                            child: Text(
                                              'View',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: widthStep*30,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: widthStep*10),
                          child: Container(
                            width: widthStep*300,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/Splash.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [Colors.black, Colors.transparent, Colors.black],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      )
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: heightStep*14),
                                        child: Column(
                                          children: <Widget>[
                                            Text('Product1', style: TextStyle(color: Colors.white, fontSize: widthStep*45, fontWeight: FontWeight.w500),),
                                            Text('\$1200', style: TextStyle(color: Colors.white, fontSize: widthStep*35, fontWeight: FontWeight.w400),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: heightStep*14),
                                        child: Container(
                                          width: widthStep*150,
                                          height: heightStep*30,
                                          child: RaisedButton(
                                            color: Colors.red,
                                            textColor: Colors.white38,
                                            onPressed: () {},
                                            shape: StadiumBorder(

                                            ),
                                            child: Text(
                                              'View',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: widthStep*30,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: widthStep*10),
                          child: Container(
                            width: widthStep*300,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/Splash.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [Colors.black, Colors.transparent, Colors.black],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      )
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: heightStep*14),
                                        child: Column(
                                          children: <Widget>[
                                            Text('Product1', style: TextStyle(color: Colors.white, fontSize: widthStep*45, fontWeight: FontWeight.w500),),
                                            Text('\$1200', style: TextStyle(color: Colors.white, fontSize: widthStep*35, fontWeight: FontWeight.w400),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: heightStep*14),
                                        child: Container(
                                          width: widthStep*150,
                                          height: heightStep*30,
                                          child: RaisedButton(
                                            color: Colors.red,
                                            textColor: Colors.white38,
                                            onPressed: () {},
                                            shape: StadiumBorder(

                                            ),
                                            child: Text(
                                              'View',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: widthStep*30,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: heightStep*10, horizontal: widthStep*10),
                  child: Container(
                    height: heightStep*60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(widthStep*40),
                      color: Colors.black38,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: widthStep*30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('Customer Rewards: ', style: TextStyle(color: Colors.grey,fontSize: widthStep*40, fontWeight: FontWeight.w500),),
                              Text('\$100', style: TextStyle(color: Colors.white,fontSize: widthStep*35, fontWeight: FontWeight.w500),)

                            ],
                          ),
                          Icon(
                            Icons.monetization_on,
                            color: Colors.blueGrey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: heightStep*10, horizontal: widthStep*10),
                  child: Container(
                    height: heightStep*250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(widthStep*40),
                      color: Colors.black45,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: widthStep*20, vertical: heightStep*15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text('Total Cost: ', style: TextStyle(color: Colors.grey,fontSize: widthStep*50, fontWeight: FontWeight.w600),),
                                      Text('\$1000', style: TextStyle(color: Colors.white,fontSize: widthStep*50, fontWeight: FontWeight.w500),)

                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text('Tip: ', style: TextStyle(color: Colors.grey,fontSize: widthStep*50, fontWeight: FontWeight.w600),),
                                      Text('\$10', style: TextStyle(color: Colors.white,fontSize: widthStep*50, fontWeight: FontWeight.w500),)

                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: heightStep*20),
                                child: Row(
                                  children: <Widget>[
                                    Text('Tax: ', style: TextStyle(color: Colors.grey,fontSize: widthStep*50, fontWeight: FontWeight.w600),),
                                    Text('\$16.67', style: TextStyle(color: Colors.white,fontSize: widthStep*50, fontWeight: FontWeight.w500),)

                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: heightStep*70,
                            width: widthStep*900,
                            child: RaisedButton(
                              color: Colors.red,
                              textColor: Colors.white38,
                              onPressed: () {},
                              shape: StadiumBorder(

                              ),
                              child: Text(
                                'Book it Now',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: widthStep*70,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
