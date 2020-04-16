import 'package:flutter/material.dart';

class HowPg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                child: Text(
                  'How To Top Up',
                  style: TextStyle(
                    fontSize: 23.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5.0),
                child: Text(
                    ''' ၁။ လူကြီးမင်းလိုအပ်သော Mobile ဖုန်းငွေပမာဏအား ရွေးချယ်ပါ။

၂။ ထိုနောက် လူကြီးမင်း၏ Mobile ဖုန်းနံပါတ်အား အောက်ပါအတိုင်း ထည့်သွင်းပေးပါ။
'''),
              ),
               
              Container(
                child: Text('''  သတိပြုရန်....
   - Country Code "+95" ထည့်သွင်းရန် မလိုပါ။
   - ဖုန်းနံပါတ်များကြားတွင် Space ထည့်ရေးရန် မလိုပါ။
   - "09" အပါအဝင် ဖုန်းနံပါတ်အား အပြည့်အစုံထည့်သွင်းပေးရန်... (eg.. 095161719)
'''),
              ),
               
              Container(
                child: Text('''၃။ လူကြီးမင်း၏ Mobile ဖုန်းနံပါတ်အား ထည့်သွင်းပြီးပါက "Top Up Now" Button ကို နှိပ်ပေးပါ။

၄။ ငွေပေးချေမှု ပြုလုပ်ရမည် အဆင့်သို့ ရောက်ရှိသွားပါလိမ့်မည်။ လူကြီးမင်း ရွေးချယ်သော ငွေပမာဏ နှင့် Mobile ဖုန်းနံပါတ်အား သေချာစွာ ထပ်မံစစ်ဆေးပါ။

၅။ ထို့နောက် လူကြီးမင်း၏ Online Payment စနစ်အတွင်းသို့ ဝင်ရောက်၍ ငွေပေးချေမှု ပြုလုပ်နိုင်ရန် အဆင့်ဆင့်ဆောင်ရွက်ပေးပါ။

၆။ အထက်ပါအတိုင်း ငွေပေးချေမှုလုပ်ငန်းစဉ်များ ပြုလုပ်ပြီးစီးပါက ခေတ္တစောင့်ဆိုင်းပေးပါ။

၇။ လူကြီးမင်း၏ Mobile ဖုန်းသို့ ဖြည့်သွင်းလိုက်သော ငွေပမာဏ ဝင်ရောက်လာပါလိမ့်မည်။
'''),
              ),
               
            ],
          )
        ],
      ),
    );
  }
}
