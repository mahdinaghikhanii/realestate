import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFFFFFFF),
          automaticallyImplyLeading: false,
          centerTitle: false,
          titleSpacing: 0,
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "find your best\nproperty",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: 48,
                height: 48,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/img/profile.jpg',
                  ),
                ),
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color(0xFFFFFFFF),
            child: Column(
              children: [Container()],
            ),
          ),
        ));
  }
}
