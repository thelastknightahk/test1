import 'package:flutter/material.dart';
import 'package:fluttertest/bloc/TopupBloc.dart';
import 'package:fluttertest/model/topmodel.dart';
import 'package:http/http.dart' as http;
class MyTopUpPg extends StatefulWidget {
  @override
  _MyTopUpPgState createState() => _MyTopUpPgState();
}

class _MyTopUpPgState extends State<MyTopUpPg> {
  final String url="https://www.myanpay.com.mm/mobile/api/billpay/startmulticheckout";
  final TextEditingController _phone = new TextEditingController();
  final TextEditingController _amount = new TextEditingController();
  final TopupBloc _topupBloc = TopupBloc();
  List<Topup> mytopdata = [];
  @override
  void dispose() {
    _topupBloc.dispose();
    super.dispose();
  }
   Future<String> createPay(String itemname,String itemno,String itemamt) async{
    var response = await http.post(
      Uri.encodeFull(url),
      headers: {"content-type": "application/x-www-form-urlencoded" },
      //body: {"uniqueUserId":"BP1234567890","itemName":"${mydata[0].itemname}","itemNumber":"${mydata[0].itemno}","itemAmt":"${mydata[0].itemamt}","itemQty":"1"}
      body: {"uniqueUserId":"BP1234567890","itemName":"${itemname}","itemNumber":"${itemno}","itemAmt":"${itemamt}","itemQty":"1"}
      
    );
    print(response.body);
     
    return "Success";
  }

  String _selectedPos;
  var firstColor = Colors.redAccent,
      secondColor = Colors.redAccent,
      thirdColor = Colors.pinkAccent;
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 430.0,
          child: tabShow(),
        )
      ],
    );
  }

  Widget tabShow() {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: tabView(),
            ),
            Expanded(
              child: tabItem(),
            ),
          ],
        ),
      )),
    );
  }

  Widget tabView() {
    return TabBar(
      tabs: [
        Tab(
            icon: Icon(
          Icons.create,
          color: Colors.redAccent,
        )),
        Tab(icon: Icon(Icons.format_list_numbered, color: Colors.redAccent)),
      ],
    );
  }

  Widget tabItem() {
    return TabBarView(
      children: [
        Container(
          child: inputTopup(),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: topUpList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                      padding: const EdgeInsets.all(15),
                      child: FlatButton(
                        color: Colors.redAccent,
                        onPressed: () {
                            for(int i=0;i<mytopdata.length;i++){
                              this.createPay(mytopdata[i].operator, mytopdata[i].phno, mytopdata[i].amount);
                              print('clicked $i');
                            }
                        },
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.attach_money,
                              color: Colors.white,
                            ),
                            Text(
                              "Confirm",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )),
                  Container(
                    child: Container(
                      child: Text('Total - 2400000'),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget inputTopup() {
    List<String> _locations = [
      'MyanPay(4.5 % Discount)',
      'MPU(3 % Discount)',
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5.0),
            child: TextFormField(
              controller: _phone,
              keyboardType: TextInputType.phone,
              decoration: new InputDecoration(
                  labelText: 'Phone No',
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: TextFormField(
              controller: _amount,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  labelText: 'Amount',
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 50.0),
            child: FlatButton.icon(
              label: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                String operator = "";
                if (_phone.text.toString().startsWith("097")) {
                  operator = "Telenor";
                } else if (_phone.text.toString().startsWith("099")) {
                  operator = "Ooredoo";
                } else if (_phone.text.toString().startsWith("096")) {
                  operator = "Mytel";
                } else {
                  operator = "MPT";
                }
                int amt = int.parse(_amount.text.toString());
                double r = amt - (amt * 0.045);
                mytopdata.add(
                    new Topup(operator, _phone.text.toString(), r.toString()));
                print("${mytopdata.length}");
                _topupBloc.addData(new Topup(
                    operator, _phone.text.toString(), _amount.text.toString()));
              },
              color: Colors.redAccent,
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                       
                      Container(
                        child: Text('Telenor'),
                      ),
                      Container(
                        child: Text('09776029284'),
                      ),
                      Container(
                        child: Text('2000'),
                      ),
                      Container(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        
                        print('Clicked Removed');
                      });
                    },
                    child: Icon(Icons.delete_outline),
                  ),
                )
                    ],
                  ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 30.0),
            child: DropdownButton(
              hint: _selectedPos == null
                  ? Text('Please choose Payment ')
                  : Text('${_selectedPos}'), // Not necessary for Option 1
              value: _selectedPos,
              onChanged: (newValue) {
                setState(() {
                  _selectedPos = newValue;
                  print(_selectedPos);
                });
              },
              items: _locations.map((location) {
                return DropdownMenuItem(
                  child: new Text(location),
                  value: location,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget topUpList() {
    return StreamBuilder<List<Topup>>(
      stream: _topupBloc.tplistSt,
      builder: (BuildContext context, AsyncSnapshot<List<Topup>> snapshot) {
        var mylength = 0;
        return ListView.separated(
          separatorBuilder: (context, index) => Container(
              padding: EdgeInsets.only(left: 5.0, right: 5.0),
              child: Divider(height: 1.0, color: Colors.grey)),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: snapshot.data == null ? mylength : snapshot.data.length,
          itemBuilder: (context, index) {
            int i = index + 1;
            return ListTile(
                title: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text('${i}'),
                      ),
                      Container(
                        child: Text('${snapshot.data[index].operator}'),
                      ),
                      Container(
                        child: Text('${snapshot.data[index].phno}'),
                      ),
                      Container(
                        child: Text('${snapshot.data[index].amount}'),
                      )
                    ],
                  ),
                ),
                trailing: Container(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        mytopdata.removeAt(index);
                        _topupBloc.removeData(index);
                        print('Clicked $index');
                      });
                    },
                    child: Icon(Icons.delete_outline),
                  ),
                )
                );
          },
        );
      },
    );
  }
}
