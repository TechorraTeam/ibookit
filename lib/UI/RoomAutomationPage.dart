import 'package:flutter/material.dart';
import 'package:ibookit/UI/PromoterLoginPage.dart';

import 'package:ibookit/UI/WaitressLoginPage.dart';
import 'package:ibookit/UI/ui_scaffolds.dart';

class RoomController {
double temperatureValue;
double lightValue;
double volumeValue;
bool tvStatus;
bool blindsStatus;
int tempTemp;
int volumeTemp;

RoomController({
  this.temperatureValue = 25,
  this.lightValue = 0,
  this.volumeValue = 0,
  this.blindsStatus = false,
  this.tvStatus = false,
  this.tempTemp = 25,
  this.volumeTemp = 0,
});

}

List<String> lightLabels = ['OFF', 'DIM', 'ON'];
RoomController livingRoomController = RoomController();
RoomController dinningRoomController = RoomController();
RoomController bedroomController = RoomController();
RoomController bathroomController = RoomController();
RoomController kitchenController = RoomController();
RoomController otherController = RoomController();


class RoomAutomationScreen extends StatelessWidget {
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
          'Room Controls',
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
                    MaterialPageRoute(builder: (context) => PromoterLoginScreen()),
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
        padding: EdgeInsets.symmetric(horizontal: widthStep*15, vertical: heightStep*15),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: widthStep*450,
                  height: heightStep*300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(widthStep*10),
                  ),
                  child: RaisedButton(
                    color: Colors.red.shade300,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LivingRoomControls()),
                      );
                      },
                    child: Text('LIVING ROOM', style: TextStyle(color: Colors.black87, fontSize: widthStep*50),),
                  ),
                ),
                Container(
                  width: widthStep*450,
                  height: heightStep*300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(widthStep*10),
                  ),
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DinningRoomControls()),
                      );
                    },
                    color: Colors.yellowAccent.shade100,
                    child: Text('DINNING ROOM', style: TextStyle(color: Colors.black87, fontSize: widthStep*50),),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: widthStep*450,
                  height: heightStep*300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(widthStep*10),
                  ),
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BedroomControls()),
                      );
                    },
                    color: Colors.green.shade100,

                    child: Text('BED ROOM', style: TextStyle(color: Colors.black87, fontSize: widthStep*50),),
                  ),
                ),
                Container(
                  width: widthStep*450,
                  height: heightStep*300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(widthStep*10),
                  ),
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BathroomControls()),
                      );
                    },
                    color: Colors.brown.shade200,

                    child: Text('BATHROOM', style: TextStyle(color: Colors.black87, fontSize: widthStep*50),),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: widthStep*450,
                  height: heightStep*300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(widthStep*10),
                  ),
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => KitchenControls()),
                      );
                    },
                    color: Colors.purpleAccent.shade100,
                    child: Text('KITCHEN', style: TextStyle(color: Colors.black87, fontSize: widthStep*50),),
                  ),
                ),
                Container(
                  width: widthStep*450,
                  height: heightStep*300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(widthStep*10),
                  ),
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OthersControls()),
                      );
                    },
                    color: Colors.white24,
                    child: Text('OTHERS', style: TextStyle(color: Colors.black87, fontSize: widthStep*50),),
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



class LivingRoomControls extends StatefulWidget {
  @override
  _LivingRoomControlsState createState() => _LivingRoomControlsState();
}

class _LivingRoomControlsState extends State<LivingRoomControls> {
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
          'Living Room Controls',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: widthStep*50),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: widthStep*30),
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: widthStep*100),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Temperature', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*600,
                  height: heightStep*100,
                  child: Slider(
                    min: 5.0,
                    max: 35.0,
                    value: livingRoomController.temperatureValue,
                    inactiveColor: Colors.blue,
                    activeColor: Colors.red,
                    divisions: 30,

                    onChanged: (newValue){
                      setState(() {
                        livingRoomController.temperatureValue = newValue;
                        livingRoomController.tempTemp = newValue.round();
                      });
                    },
                    label: '${livingRoomController.tempTemp}',
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Lights', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*500,
                  height: heightStep*100,
                  child: Slider(
                    min: 0,
                    max: 2,
                    value: livingRoomController.lightValue,
                    inactiveColor: Colors.white70,
                    activeColor: Colors.orange,
                    divisions: 2,
                    label: lightLabels[livingRoomController.lightValue.round()],
                    onChanged: (newValue){
                      setState(() {
                        livingRoomController.lightValue = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('TV', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*150,
                  height: heightStep*150,
                  child: Switch(
                    value: livingRoomController.tvStatus,
                    onChanged: (newValue){
                      setState(() {
                        livingRoomController.tvStatus = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('BLINDS', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*150,
                  height: heightStep*150,
                  child: Switch(
                    value: livingRoomController.blindsStatus,
                    onChanged: (newValue){
                      setState(() {
                        livingRoomController.blindsStatus = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Volume', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*600,
                  height: heightStep*100,
                  child: Slider(
                    min: 0,
                    max: 100,
                    value: livingRoomController.volumeValue,
                    inactiveColor: Colors.blue,
                    activeColor: Colors.red,
                    divisions: 100,
                    label: '${livingRoomController.volumeTemp}',
                    onChanged: (newValue){
                      setState(() {
                        livingRoomController.volumeValue = newValue;
                        livingRoomController.volumeTemp = newValue.round();
                      });
                    },
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class DinningRoomControls extends StatefulWidget {
  @override
  _DinningRoomControlsState createState() => _DinningRoomControlsState();
}

class _DinningRoomControlsState extends State<DinningRoomControls> {
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
          'Dinning Room Controls',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: widthStep*50),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: widthStep*30),
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: widthStep*100),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Temperature', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*600,
                  height: heightStep*100,
                  child: Slider(
                    min: 5.0,
                    max: 35.0,
                    value: dinningRoomController.temperatureValue,
                    inactiveColor: Colors.blue,
                    activeColor: Colors.red,
                    divisions: 30,
                    label: '${dinningRoomController.tempTemp}',
                    onChanged: (newValue){
                      setState(() {
                        dinningRoomController.temperatureValue = newValue;
                        dinningRoomController.tempTemp = newValue.round();
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Lights', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*500,
                  height: heightStep*100,
                  child: Slider(
                    min: 0,
                    max: 2,
                    value: dinningRoomController.lightValue,
                    inactiveColor: Colors.white70,
                    activeColor: Colors.orange,
                    divisions: 2,
                    label: lightLabels[dinningRoomController.lightValue.round()],
                    onChanged: (newValue){
                      setState(() {
                        dinningRoomController.lightValue = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('TV', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*150,
                  height: heightStep*150,
                  child: Switch(
                    value: dinningRoomController.tvStatus,
                    onChanged: (newValue){
                      setState(() {
                        dinningRoomController.tvStatus = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('BLINDS', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*150,
                  height: heightStep*150,
                  child: Switch(
                    value: dinningRoomController.blindsStatus,
                    onChanged: (newValue){
                      setState(() {
                        dinningRoomController.blindsStatus = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Volume', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*600,
                  height: heightStep*100,
                  child: Slider(
                    min: 0,
                    max: 100,
                    value: dinningRoomController.volumeValue,
                    inactiveColor: Colors.blue,
                    activeColor: Colors.red,
                    divisions: 100,
                    label: '${dinningRoomController.volumeTemp}',
                    onChanged: (newValue){
                      setState(() {
                        dinningRoomController.volumeValue = newValue;
                        dinningRoomController.volumeTemp = newValue.round();
                      });
                    },
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class BedroomControls extends StatefulWidget {
  @override
  _BedroomControlsState createState() => _BedroomControlsState();
}

class _BedroomControlsState extends State<BedroomControls> {

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
          'Bedroom Controls',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: widthStep*50),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: widthStep*30),
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: widthStep*100),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Temperature', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*600,
                  height: heightStep*100,
                  child: Slider(
                    min: 5.0,
                    max: 35.0,
                    value: bedroomController.temperatureValue,
                    inactiveColor: Colors.blue,
                    activeColor: Colors.red,
                    divisions: 30,
                    label: '${bedroomController.tempTemp}',
                    onChanged: (newValue){
                      setState(() {
                        bedroomController.temperatureValue = newValue;
                        bedroomController.tempTemp = newValue.round();
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Lights', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*500,
                  height: heightStep*100,
                  child: Slider(
                    min: 0,
                    max: 2,
                    value: bedroomController.lightValue,
                    inactiveColor: Colors.white70,
                    activeColor: Colors.orange,
                    divisions: 2,
                    label: lightLabels[bedroomController.lightValue.round()],
                    onChanged: (newValue){
                      setState(() {
                        bedroomController.lightValue = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('TV', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*150,
                  height: heightStep*150,
                  child: Switch(
                    value: bedroomController.tvStatus,
                    onChanged: (newValue){
                      setState(() {
                        bedroomController.tvStatus = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('BLINDS', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*150,
                  height: heightStep*150,
                  child: Switch(
                    value: bedroomController.blindsStatus,
                    onChanged: (newValue){
                      setState(() {
                        bedroomController.blindsStatus = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Volume', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*600,
                  height: heightStep*100,
                  child: Slider(
                    min: 0,
                    max: 100,
                    value: bedroomController.volumeValue,
                    inactiveColor: Colors.blue,
                    activeColor: Colors.red,
                    divisions: 100,
                    label: '${bedroomController.volumeTemp}',
                    onChanged: (newValue){
                      setState(() {
                        bedroomController.volumeValue = newValue;
                        bedroomController.volumeTemp = newValue.round();
                      });
                    },
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class BathroomControls extends StatefulWidget {
  @override
  _BathroomControlsState createState() => _BathroomControlsState();
}

class _BathroomControlsState extends State<BathroomControls> {

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
          'Bathroom Controls',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: widthStep*50),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: widthStep*30),
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: widthStep*100),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Temperature', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*600,
                  height: heightStep*100,
                  child: Slider(
                    min: 5.0,
                    max: 35.0,
                    value: bathroomController.temperatureValue,
                    inactiveColor: Colors.blue,
                    activeColor: Colors.red,
                    divisions: 30,
                    label: '${bathroomController.tempTemp}',
                    onChanged: (newValue){
                      setState(() {
                        bathroomController.temperatureValue = newValue;
                        bathroomController.tempTemp = newValue.round();
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Lights', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*500,
                  height: heightStep*100,
                  child: Slider(
                    min: 0,
                    max: 2,
                    value: bathroomController.lightValue,
                    inactiveColor: Colors.white70,
                    activeColor: Colors.orange,
                    divisions: 2,
                    label: lightLabels[bathroomController.lightValue.round()],
                    onChanged: (newValue){
                      setState(() {
                        bathroomController.lightValue = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('TV', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*150,
                  height: heightStep*150,
                  child: Switch(
                    value: bathroomController.tvStatus,
                    onChanged: (newValue){
                      setState(() {
                        bathroomController.tvStatus = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('BLINDS', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*150,
                  height: heightStep*150,
                  child: Switch(
                    value: bathroomController.blindsStatus,
                    onChanged: (newValue){
                      setState(() {
                        bathroomController.blindsStatus = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Volume', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*600,
                  height: heightStep*100,
                  child: Slider(
                    min: 0,
                    max: 100,
                    value: bathroomController.volumeValue,
                    inactiveColor: Colors.blue,
                    activeColor: Colors.red,
                    divisions: 100,
                    label: '${bathroomController.volumeTemp}',
                    onChanged: (newValue){
                      setState(() {
                        bathroomController.volumeValue = newValue;
                        bathroomController.volumeTemp = newValue.round();
                      });
                    },
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class KitchenControls extends StatefulWidget {
  @override
  _KitchenControlsState createState() => _KitchenControlsState();
}

class _KitchenControlsState extends State<KitchenControls> {

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
          'Kitchen Controls',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: widthStep*50),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: widthStep*30),
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: widthStep*100),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Temperature', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*600,
                  height: heightStep*100,
                  child: Slider(
                    min: 5.0,
                    max: 35.0,
                    value: kitchenController.temperatureValue,
                    inactiveColor: Colors.blue,
                    activeColor: Colors.red,
                    divisions: 30,
                    label: '${kitchenController.tempTemp}',
                    onChanged: (newValue){
                      setState(() {
                        kitchenController.temperatureValue = newValue;
                        kitchenController.tempTemp = newValue.round();
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Lights', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*500,
                  height: heightStep*100,
                  child: Slider(
                    min: 0,
                    max: 2,
                    value: kitchenController.lightValue,
                    inactiveColor: Colors.white70,
                    activeColor: Colors.orange,
                    divisions: 2,
                    label: lightLabels[kitchenController.lightValue.round()],
                    onChanged: (newValue){
                      setState(() {
                        kitchenController.lightValue = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('TV', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*150,
                  height: heightStep*150,
                  child: Switch(
                    value: kitchenController.tvStatus,
                    onChanged: (newValue){
                      setState(() {
                        kitchenController.tvStatus = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('BLINDS', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*150,
                  height: heightStep*150,
                  child: Switch(
                    value: kitchenController.blindsStatus,
                    onChanged: (newValue){
                      setState(() {
                        kitchenController.blindsStatus = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Volume', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*600,
                  height: heightStep*100,
                  child: Slider(
                    min: 0,
                    max: 100,
                    value: kitchenController.volumeValue,
                    inactiveColor: Colors.blue,
                    activeColor: Colors.red,
                    divisions: 100,
                    label: '${kitchenController.volumeTemp}',
                    onChanged: (newValue){
                      setState(() {
                        kitchenController.volumeValue = newValue;
                        kitchenController.volumeTemp = newValue.round();
                      });
                    },
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class OthersControls extends StatefulWidget {
  @override
  _OthersControlsState createState() => _OthersControlsState();
}

class _OthersControlsState extends State<OthersControls> {

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
          'Others Controls',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: widthStep*50),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: widthStep*30),
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: widthStep*100),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Temperature', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*600,
                  height: heightStep*100,
                  child: Slider(
                    min: 5.0,
                    max: 35.0,
                    value: otherController.temperatureValue,
                    inactiveColor: Colors.blue,
                    activeColor: Colors.red,
                    divisions: 30,
                    label: '${otherController.tempTemp}',
                    onChanged: (newValue){
                      setState(() {
                        otherController.temperatureValue = newValue;
                        otherController.tempTemp = newValue.round();
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Lights', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*500,
                  height: heightStep*100,
                  child: Slider(
                    min: 0,
                    max: 2,
                    value: otherController.lightValue,
                    inactiveColor: Colors.white70,
                    activeColor: Colors.orange,
                    divisions: 2,
                    label: lightLabels[otherController.lightValue.round()],
                    onChanged: (newValue){
                      setState(() {
                        otherController.lightValue = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('TV', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*150,
                  height: heightStep*150,
                  child: Switch(
                    value: otherController.tvStatus,
                    onChanged: (newValue){
                      setState(() {
                        otherController.tvStatus = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('BLINDS', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*150,
                  height: heightStep*150,
                  child: Switch(
                    value: otherController.blindsStatus,
                    onChanged: (newValue){
                      setState(() {
                        otherController.blindsStatus = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: widthStep*50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Volume', style: TextStyle(color: Colors.white, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
                Container(
                  width: widthStep*600,
                  height: heightStep*100,
                  child: Slider(
                    min: 0,
                    max: 100,
                    value: otherController.volumeValue,
                    inactiveColor: Colors.blue,
                    activeColor: Colors.red,
                    divisions: 100,
                    label: '${otherController.volumeTemp}',
                    onChanged: (newValue){
                      setState(() {
                        otherController.volumeValue = newValue;
                        otherController.volumeTemp = newValue.round();
                      });
                    },
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}

