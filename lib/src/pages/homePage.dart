import 'package:burger_app/src/pages/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final imageURL = [
    'assets/images/b1.jpg',
    'assets/images/b2.jpg',
    'assets/images/b3.jpg',
    'assets/images/b4.jpg',
    'assets/images/b5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("DEEMARK Burger"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            height: 150,
            child: Card(
              color: Color(0xFFac646c),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              elevation: 8,
              child: const Center(
                child: Text(
                  "WELCOME!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.amberAccent),

                ),
              ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FanCarouselImageSlider(
                    imagesLink: imageURL,
                    isAssets: true,
                    autoPlay: false,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
