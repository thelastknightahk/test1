import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class NewsPg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: WebviewScaffold(
        url: 'https://web.facebook.com/pg/myanmarmobiletopup/posts/?ref=page_internal',
      hidden: true,
     ),
    );
  }
}