import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TruckON',
      theme: new ThemeData(
          //primaryColor: Colors.black,
          ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('TruckON'),
        // ),
        body: OneTimeCarousel(),
      ),
    );
  }
}

class OneTimeCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        //padding: EdgeInsetsDirectional.only(top: 30.0),
        child: CarouselSlider(
      height: MediaQuery.of(context).size.height,
      viewportFraction: 1.0,
      // enlargeCenterPage: true,
      enableInfiniteScroll: false,
      items: ['assets/image1.jpg', 'assets/image2.jpg', 'assets/image3.jpg']
          .map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                i,
                fit: BoxFit.fitHeight,
              ),
            );
          },
        );
      }).toList(),
    ));
  }
}
