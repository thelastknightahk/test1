import 'package:flutter/material.dart';

class HelpPg extends StatelessWidget {
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
                  'Help/FAQ',
                  style: TextStyle(
                    fontSize: 23.0,
                  ),
                ),
              ),
               Container(
                child: Text(
                  ' What is topup.com.mm website?',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Container(
                child: Text('''Topup.com.mm သည် မြန်မာနိုင်ငံတွင် အသုံးပြုနေသာ MPT GSM/WCDMA, MECTel, CDMA 800 Mhz, CDMA 450 Mhz, Ooredoo, Telenor ဖုန်းများသို့ Online မှတဆင့် တိုက်ရိုက် ငွေဖြည့်သွင်းပေးသော Website ဖြစ်ပါသည်။
'''),

              ),
               Container(
                child: Text(
                  '  Why error occured in CDMA 800 Mhz and CDMA 450 Mhz mobile types?',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Container(
                child: Text('''CDMA 800 နဲ့ 450 ဖုန်းအမျိုးအစား များတွင် ဖုန်း Bill သုညကျပ်ဖြစ်နေပါက သို့မဟုတ် ဖုန်းBill သက်တမ်း ကုန်ဆုံးနေပါက auto top-up စနစ်ဖြင့်ငွေဖြည့်သွင်း၍ ရမည်မဟုတ်ပေ။
တခါတရံတွင်လည်း အထက်ဖော်ပြပါအခြေအနေမျိုး မဖြစ်နေသော်လည်း MPT Network မှ error တက်နေပါက ငွေဖြည့်သွင်း၍ ရမည်မဟုတ်ပါ။
'''),
              ),
              Container(
                child: Text(
                  'Which type of mobile networks are accepted to recharge the balance?',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Container(
                child: Text('''Topup.com.mm မှ တဆင့် အောက်ဖော်ပြပါ Mobile Network များသို့ ငွေဖြည့်သွင်းပေးနိုင်ပါသည်။
- GSM Mobile Network
- WCDMA Mobile Network
- CDMA 800 Mhz Mobile Network
- CDMA 450 Mhz Mobile Network
- Ooredoo Mobile Network
- Telenor Mobile Network

'''),
              ),
              Container(
                child: Text(
                  '''Do I need to make 'Account Registration' to buy Top-up Card?''',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Container(
                child: Text('''Topup.com.mm ၏ ဝန်ဆောင်မှုအား အသုံးပြုရန်အတွက် Account Register ပြုလုပ်ရန် မလိုအပ်ဘဲ လွတ်လပ်စွာ အသုံးပြုနိုင်ပါသည်။


'''),
              ),
              Container(
                child: Text(
                  'Which type of currencies are accepted in topup.com.mm website?',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Container(
                child: Text('''Topup.com.mm တွင် ဝန်ဆောင်မှုပေးသော Top-up ကဒ်များ အားလုံးအား မြန်မာကျပ်ငွေ (Kyats) ဖြင့်သာ ဝန်ဆောင်မှုပေးပါသည်။
'''),
              ),
              Container(
                child: Text(
                  ' What payment methods can accept?',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Container(
                child: Text('''MyanPay Online Payment နှင့် MPU card တို့အား အသုံးပြု၍ ငွေပေးချေနိုင်ပါသည်။
'''),
              ),
              Container(
                child: Text(
                  'How many times can I recharge my mobile phone from this website?',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Container(
                child: Text('''Topup.com.mm website တွင် အသုံးပြုနိုင်သည့် Mobile ဖုန်းအရေအတွက် အကြိမ်ရေ ကန့်သတ်ထားခြင်း မရှိပါ။ အကြိမ်ကြိမ် အသုံးပြုနိုင်ပါသည်။ သို့သော် ဖုန်းတလုံးတည်းကို ဆက်တိုက်ဖြည့်ပါက လေးမိနစ်ခြားမှသာ ဖြည့်လို့ရမည် ဖြစ်ပါသည်။


'''),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
