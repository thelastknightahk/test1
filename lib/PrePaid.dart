import 'package:flutter/material.dart';

class MyPrePaid extends StatefulWidget {
  @override
  _MyPrePaidState createState() => _MyPrePaidState();
}

class _MyPrePaidState extends State<MyPrePaid> {
  String _selectedPos;
  String _selectedVol;
  String _selectedPack;

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
                        onPressed: () {},
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
    var firstColor = Colors.redAccent,
        secondColor = Colors.redAccent,
        thirdColor = Colors.pinkAccent;
    List<String> _pos = [
      'MyanPay(4.5 % Discount)',
      'MPU(3 % Discount)',
    ];
    List<String> _volume = ['MPT', 'Telenor', 'Mytel', 'Oreedo'];
    List<String> _package = ['900ks', '1000ks', '4000ks', '6000ks'];

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 150.0,
                  child: DropdownButton(
                    isExpanded: true,
                    hint: _selectedPos == null
                        ? Text('Card Type')
                        : Text('${_selectedVol}'), // Not necessary for Option 1
                    value: _selectedVol,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedVol = newValue;
                        print(_selectedVol);
                      });
                    },
                    items: _volume.map((location) {
                      return DropdownMenuItem(
                        child: new Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                ),
                Container(
                  width: 150.0,
                  child: DropdownButton(
                    isExpanded: true,
                    hint: _selectedPos == null
                        ? Text('Package')
                        : Text(
                            '${_selectedPack}'), // Not necessary for Option 1
                    value: _selectedPack,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedPack = newValue;
                        print(_selectedPack);
                      });
                    },
                    items: _package.map((location) {
                      return DropdownMenuItem(
                        child: new Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              decoration: new InputDecoration(
                  labelText: 'Quantity',
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
              onPressed: () {},
              color: Colors.redAccent,
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
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
              items: _pos.map((location) {
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
    return myOutgoList();
  }

  Widget myOutgoList() {
    return ListView.separated(
      separatorBuilder: (context, index) => Container(
          padding: EdgeInsets.only(left: 5.0, right: 5.0),
          child: Divider(height: 1.0, color: Colors.grey)),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
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
                    child: Text('Mpt - 1000'),
                  ),
                  Container(
                    child: Text('2'),
                  ),
                  Container(
                    child: Text('4000'),
                  )
                ],
              ),
            ),
            trailing: Container(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    print('Clicked $index');
                  });
                },
                child: Icon(Icons.delete_outline),
              ),
            )
          );
      },
    );
  }
}
