import 'package:flutter/material.dart';

import 'package:realestate/module/extention/extention.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: const Color(0xFFFFFFFF),
        automaticallyImplyLeading: false,
        title: Text("Chat", style: context.textTheme.subtitle2),
      ),
    );
  }
}
