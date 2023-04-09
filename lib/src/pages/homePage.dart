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
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 100,
              ),
              FanCarouselImageSlider(
                imagesLink: imageURL,
                isAssets: true,
                autoPlay: false,
              )
            ],
          ),
        ),
      ),
    );

  }
}
