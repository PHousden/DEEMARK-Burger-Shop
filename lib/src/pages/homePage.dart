import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/images/b1.jpg',
  'assets/images/b2.jpg',
  'assets/images/b3.jpg',
  'assets/images/b4.jpg',
  'assets/images/b5.jpg',
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("DEEMARK"),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.grey,
        width: double.infinity,
        padding: EdgeInsets.all(15),
        child: Stack(
          children: [
            CarouselSlider(
              items: genarateImagesTile(),
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: false,
              ),
            ),

          ],
        ),
      ),
    );
  }
}


List<Widget> genarateImagesTile() {
  return imgList
      .map((i) => ClipRect(
              child: Image.asset(
            i,
            fit: BoxFit.cover,
            width: 1000,
          )))
      .toList();
}
