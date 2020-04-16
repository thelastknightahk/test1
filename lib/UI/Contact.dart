import 'package:flutter/material.dart';

class ContactPg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
            margin: EdgeInsets.all(5.0),
            child: TextFormField(
              
              decoration: new InputDecoration(
                  labelText: 'Enter Your Name',
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: new InputDecoration(
                  labelText: 'Enter Email',
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              decoration: new InputDecoration(
                  labelText: 'Phone Number',
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
          ),
           Container(
              margin: EdgeInsets.all(5.0),
             child: TextField(
      minLines: 5,
      maxLines: 10,
      autocorrect: false,
      decoration: InputDecoration(
        labelText: 'Enter Your Message',
        filled: true,
        fillColor: Color(0xFFDBEDFF),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    ),
    
           ),Container(
             child: FlatButton(
               onPressed: (){},
               child: Text('Submit',style: TextStyle(
                 color: Colors.white
               ),),
                color: Colors.redAccent,
             ),
           ),
           Container(
             child: Text('Address',style: TextStyle(fontSize: 18.0),),
           ),
           Container(
             padding: EdgeInsets.all(9.0),
             child: Text('''No.540, Awayar Street(7),
Nant Thar Gone Ward,
Insein Township, Yangon,
Myanmar.

Phone:
+95 -9-774817773'''),
           ),Container(
             child: Text('Email',style: TextStyle(fontSize: 18.0),),
           ),Container(
             padding: EdgeInsets.all(9.0),
             child: Text('info@topup.com.mm'),
           )
            ],
          )
        ],
      ),
    );
  }
}