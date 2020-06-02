import 'package:flutter/material.dart';
import 'package:ibookit/UI/EventDetailsPage.dart';
import 'package:ibookit/UI/ui_scaffolds.dart';
import 'Tabs/book_Ride.dart';
import 'Tabs/tables_booking.dart';
import 'Tabs/bottles_details.dart';
import 'Tabs/events_details.dart';

//Booking Screen that has 4 Tabs (tables, Events, Bottles, Rides)

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int screenSelected = 0;
  List<String> appBarText = ['TABLES', 'EVENTS', 'BOTTLES', 'RIDES'];

  Widget pagesUI(int index) {
    switch (index) {
      case 0:
        return TablesBooking();
      case 1:
        return EventsDetails();
      case 2:
        return Bottles_Details();
      case 3:
        return BookRide();
      default:
        return TablesBooking();
    }
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
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
            appBarText[screenSelected],
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
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
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
                      MaterialPageRoute(builder: (context) => EventDetailsScreen()),
                    );
                  },
                  iconSize: widthStep*100,
                );
              },
            ),
          ],
        ),
        body: SafeArea(
          child: pagesUI(screenSelected),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: screenSelected,
          // this will be set when a new tab is tapped
          type: BottomNavigationBarType.fixed,
          iconSize: widthStep*80,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white60,
          selectedFontSize: widthStep*40,
          unselectedFontSize: widthStep*25,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.table_chart),
              title: new Text('TABLES'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.event),
              title: new Text('EVENTS'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_bar),
              title: Text('BOTTLES'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_car),
              title: Text('RIDES'),
            )
          ],
          onTap: (index) {
            setState(() {
              screenSelected = index;
            });
          },
        ));
    return scaffold;
  }
}
