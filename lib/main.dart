import 'package:flutter/material.dart';
import 'package:fluttertest/Package.dart';
import 'package:fluttertest/PrePaid.dart';
import 'package:fluttertest/TopUp.dart';
import 'package:fluttertest/UI/About.dart';
import 'package:fluttertest/UI/Contact.dart';
import 'package:fluttertest/UI/Help.dart';
import 'package:fluttertest/UI/How.dart';
import 'package:fluttertest/UI/New.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var totalResult = 0;
  
  bool pressTopup,
      pressPackage,
      pressPrepaid,
      presshome,
      pressabout,
      presshow,
      pressnoti,
      presshelp,
      presscontact;

  Color topupColor, packColor, preColor;
  @override
  void initState() {
    super.initState();
    topupColor = Colors.blue;
    packColor = Colors.black;
    preColor = Colors.black;
    pressTopup = true;
    pressPackage = false;
    pressPrepaid = false;
    //page
    presshome = true;
    pressabout = false;
    presscontact = false;
    presshow = false;
    presshelp = false;
    presscontact = false;
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Mobile Top-Up',
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontFamily: 'mymm'),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: itemTopup(),
            ),
            Expanded(
              child: topfunction(),
            ),
          ],
        ),
        //resizeToAvoidBottomPadding: false,
      ),
    );
  }

  Widget itemTopup() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          child: IconButton(
            onPressed: () {
              setState(() {
                pressabout = false;
                presshome = true;
                presshow = false;
                pressnoti = false;
                presscontact = false;
                presshelp = false;
                print('clicked home');
              });
            },
            icon: Icon(
              Icons.home,
              color: Colors.redAccent,
              size: 30.0,
            ),
          ),
        ),
        Container(
          child: IconButton(
            onPressed: () {
              setState(() {
                pressabout = true;
                presshome = false;
                presshow = false;
                pressnoti = false;
                presscontact = false;
                presshelp = false;
                print('clicked about');
              });
            },
            icon: Icon(
              Icons.person,
              color: Colors.redAccent,
              size: 30.0,
            ),
          ),
        ),
        Container(
          child: IconButton(
            onPressed: () {
              setState(() {
                pressabout = false;
                presshome = false;
                presshow = true;
                pressnoti = false;
                presscontact = false;
                presshelp = false;
                print('clicked how');
              });
            },
            icon: Icon(
              Icons.device_unknown,
              color: Colors.redAccent,
              size: 30.0,
            ),
          ),
        ),
        Container(
          child: IconButton(
            onPressed: () {
              setState(() {
                pressabout = false;
                presshome = false;
                presshow = false;
                pressnoti = true;
                presscontact = false;
                presshelp = false;
                print('clicked noti');
              });
            },
            icon: Icon(
              Icons.notifications,
              color: Colors.redAccent,
              size: 30.0,
            ),
          ),
        ),
        Container(
          child: IconButton(
            onPressed: () {
              setState(() {
                pressabout = false;
                presshome = false;
                presshow = false;
                pressnoti = false;
                presscontact = false;
                presshelp = true;
                print('clicked help');
              });
            },
            icon: Icon(
              Icons.help,
              color: Colors.redAccent,
              size: 30.0,
            ),
          ),
        ),
        Container(
          child: IconButton(
            onPressed: () {
              setState(() {
                pressabout = false;
                presshome = false;
                presshow = false;
                pressnoti = false;
                presscontact = true;
                presshelp = false;
                print('clicked Contact');
              });
            },
            icon: Icon(
              Icons.email,
              color: Colors.redAccent,
              size: 30.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget topfunction() {
    
    return Stack(
      children: <Widget>[
        Center(
          child: new Image.asset(
            'assets/images/bagan.jpg',
            width: 500.0,
            height: 800.0,
            fit: BoxFit.cover,
          ),
        ),
        Container(
        
          padding: EdgeInsets.all(9.0),
          child: Card(
            child: presshome
                ? homeTab()
                : pressabout
                    ? MyAbout()
                    : presshow
                        ? HowPg()
                        : pressnoti
                            ? NewsPg()
                            : presshelp ? HelpPg() : ContactPg(),
          ),
        )
      ],
    );
  }

  void doTopUp(String buttonName) {
    if (buttonName == "TopUp") {
      topupColor = Colors.blue;
      packColor = Colors.black;
      preColor = Colors.black;
      pressTopup = true;
      pressPackage = false;
      pressPrepaid = false;
      print('Top Up True');
    }
  }

  void doPackage(String buttonName) {
    if (buttonName == "Package") {
      topupColor = Colors.black;
      packColor = Colors.blue;
      preColor = Colors.black;
      print(buttonName);
      pressPackage = true;
      pressTopup = false;
      pressPrepaid = false;
      print('Package True');
    }
  }

  void doPrepaid(String buttonName) {
    if (buttonName == "Prepaid") {
      topupColor = Colors.black;
      packColor = Colors.black;
      preColor = Colors.blue;
      print(buttonName);
      pressPrepaid = true;
      pressTopup = false;
      pressPackage = false;
      print('Prepaid True');
    }
  }

  Widget homeTab() {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 9.0, top: 9.0),
                  padding: EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      print('Top up');
                      setState(() {});
                      doTopUp('TopUp');
                    },
                    child: Text(
                      'Top up',
                      style: TextStyle(fontSize: 17.0, color: topupColor),
                    ),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.black54))),
              Container(
                margin: EdgeInsets.only(left: 9.0, top: 9.0),
                padding: EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    doPackage('Package');
                    setState(() {});
                    print('Package');
                  },
                  child: Text(
                    'Package',
                    style: TextStyle(fontSize: 17.0, color: packColor),
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(width: 1.0, color: Colors.black54)),
              ),
              Container(
                margin: EdgeInsets.only(left: 9.0, top: 9.0),
                padding: EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    doPrepaid('Prepaid');
                    setState(() {});
                    print('Prepaid 1');
                  },
                  child: Text(
                    'Prepaid',
                    style: TextStyle(fontSize: 17.0, color: preColor),
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(width: 1.0, color: Colors.black54)),
              ),
            ],
          ),
          Container(
            child: pressTopup
                ? MyTopUpPg()
                : pressPackage ? MyPagePg() : MyPrePaid(),
          )
        ],
      ),
    );
  }
}
