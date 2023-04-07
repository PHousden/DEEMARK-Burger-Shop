import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("DEEMARK Burger"),
      ),
      body: Container(
        color: Colors.amberAccent,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.asset('assets/images/b1.jpg'),
            ),
            Container(
              height: 200,
              width: 200,
              child: Image.asset('assets/images/b2.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
