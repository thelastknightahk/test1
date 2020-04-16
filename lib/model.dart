class BillModel{
  String simType;
  String phno;
  String amount;
  BillModel({this.simType,this.phno,this.amount});
   static List<BillModel> getUsers() {
    return <BillModel>[
      BillModel(simType: 'MPT',phno: '09450011426',amount: '5,000'),
      BillModel(simType: 'Telenor',phno: '09778185838',amount: '7,000'),
      BillModel(simType: 'Ooreedoo',phno: '09950076900',amount: '2,000'),
      BillModel(simType: 'MPT',phno:   '09450011426',amount: '3,000'),
      BillModel(simType: 'Mytel',phno: '09695411235',amount: '4,000'),
      BillModel(simType: 'MPT',phno: '09450031426',amount: '8,000'),
      BillModel(simType: 'Telenor',phno: '09776029284',amount: '5,000'),
      BillModel(simType: 'MPT',phno: '09450011926',amount: '7,000'),
       BillModel(simType: 'MPT',phno: '09450011426',amount: '5,000'),
      BillModel(simType: 'Telenor',phno: '09778185838',amount: '7,000'),
      BillModel(simType: 'Ooreedoo',phno: '09950076900',amount: '2,000'),
      BillModel(simType: 'MPT',phno:   '09450011426',amount: '3,000'),
      BillModel(simType: 'Mytel',phno: '09695411235',amount: '4,000'),
      BillModel(simType: 'MPT',phno: '09450031426',amount: '8,000'),
      BillModel(simType: 'Telenor',phno: '09776029284',amount: '5,000'),
      BillModel(simType: 'MPT',phno: '09450011926',amount: '7,000'),
    ];
  }
}