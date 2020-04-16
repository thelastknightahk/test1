import 'package:flutter/material.dart';

class MyAbout extends StatelessWidget {
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
                  'About Us',
                  style: TextStyle(
                    fontSize: 23.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5.0),
                child: Text(
                    ''' ကျွန်တော်များ၏ topup.com.mm သည် Online Website မှ လူကြီးမင်းတို့၏ Mobile ဖုန်းများသို့ တိုက်ရိုက် ငွေဖြည့်သွင်းပေးသော Website ဖြစ်ပါသည်။ လူကြီးမင်းတို့၏ MPT GSM/WCDMA, MECTel, CDMA 800 Mhz, CDMA 450 Mhz, Ooredoo, Telenor ဖုန်းများသို့ Online မှတဆင့် လွယ်ကူ လျင်မြန်စွာ တိုက်ရိုက် ငွေဖြည့်သွင်းနိုင်ပါသည်။'''),
              ),
              Container(
                child: Text(
                  'Service',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Container(
                child: Text('''
  Topup.com.mm မှ တဆင့် အောက်ဖော်ပြပါ Mobile Network များသို့ ငွေဖြည့်သွင်းပေးနိုင်ပါသည်။
- GSM Mobile Network
- WCDMA Mobile Network
- MEC Tel - CDMA 800 Mhz
- CDMA 800 Mhz Mobile Network
- CDMA 450 Mhz Mobile Network
- Ooredoo Mobile Network
- Telenor Mobile Network
- MyTel Mobile Network

'''),
              ),
              Container(
                child: Text(
                  'Features',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Container(
                child: Text('''
- Online မှ တဆင့် တိုက်ရိုက် ငွေဖြည့်သွင်းပေးခြင်း။
- Top up Card များအား ခဲခြစ်စရာ မလိုအပ်ခြင်း။
- ငွေပေးချေပြီး ဖြည့်သွင်းလိုက်သော ငွေပမာဏ ချက်ချင်း ရောက်ရှိလာခြင်း။
- Online Service ဖြစ်သောကြောင့် (၂၄) နာရီပတ်လုံး ဝန်ဆောင်မှု ရရှိနိုင်ခြင်း။

'''),
              ),
              Container(
                child: Text(
                  'Top-up Time',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Container(
                child: Text(
                  '''*Direct top-up
*Instant Delivery
''',
                ),
              ),
              Container(
                child: Text(
                  'Payment',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Container(
                child: Text(
                  '''- We accept MyanPay and MPU Card .
''',
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
