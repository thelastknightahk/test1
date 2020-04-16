import 'dart:async';

import 'package:fluttertest/model/topmodel.dart';
import 'package:rxdart/rxdart.dart';

class TopupBloc{
  List<Topup> list =[
     
  ];
  final StreamController<List<Topup>> _tpStController = BehaviorSubject();
  final _addStController = StreamController<Topup>();
  final _removeStController = StreamController<int>();
  Stream<List<Topup>> get tplistSt => _tpStController.stream;
  StreamSink<List<Topup>> get tplistSink => _tpStController.sink;
  StreamSink<Topup> get addtp => _addStController.sink;
  StreamSink<int> get rmbtp => _removeStController.sink;
  TopupBloc(){
    _tpStController.add(list);
    _addStController.stream.listen(addData);
    _removeStController.stream.listen(removeData);
      }
     addData(Topup data){
       
        list.add(data);
        tplistSink.add(list);
        print('Added Bloc ${list.length}  ');
     }
     removeData(int i){
       
        list.removeAt(i);
        tplistSink.add(list);
        print('Removed $i');
     }
     void dispose(){
        _tpStController.close();
        _addStController.close();
        _removeStController.close();
     }
}