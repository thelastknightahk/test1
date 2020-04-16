class Topup{
  String _operator;
  String _phno;
  String _amount;
  Topup(this._operator,this._phno,this._amount);
  set operator(String op){
    this._operator=op;
  }
  set phno(String pno){
    this._phno=pno;
  }
  set amount(String amt){
    this._amount=amt;
  }
   String get operator => this._operator;
   String get phno => this._phno;
   String get amount => this._amount;
}