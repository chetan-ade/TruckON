import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
<<<<<<< HEAD
//rohan
=======

>>>>>>> 8f3c3ea36373864ffa3e0021675b6ff6a81a29e9
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
        appBar: AppBar(
          title: Text('TruckON'),
        ),
        body: OneTimeCarousel(),
      ),
    );
  }
}

class OneTimeCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(top: 30.0),
      child: CarouselSlider(
      height: 500.0,
      enableInfiniteScroll: false,
      items: [1, 2, 3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.white),
                child: Text(
                  'text $i',
                  style: TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    )
    );
  }
}
