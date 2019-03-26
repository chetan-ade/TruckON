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
        body: OneTimeCarousel(),
      ),
    );
  }
}

class OneTimeCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
      height: MediaQuery.of(context).size.height,
      viewportFraction: 1.0,
      enableInfiniteScroll: false,
      items: ['assets/image1.jpg', 'assets/image2.jpg', 'assets/image3.jpg']
          .map((i) {
            var heading;
            if (i=='assets/image1.jpg') {
              heading = 'SIMPLE SYSTEM';
            } else if(i=='assets/image2.jpg') {
              heading = 'MORE CUSTOMERS';
            } else {
              heading = 'EFFICIENT UTILIZATION';
            }

            var desc;
            if (i=='assets/image1.jpg') {
              desc = 'Keep track of all appointments at any time and easily add new services or offers';
            } else if(i=='assets/image2.jpg') {
              desc = 'Gain more customers through the supraregional reach of a digital platform';
            } else {
              desc = 'Transport your load quickly and efficiently and thereby increase your turnover';
            }

            var height = MediaQuery.of(context).size.height;
            var width = MediaQuery.of(context).size.width;

        return Builder(
          builder: (BuildContext context) {
            return Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(i), fit: BoxFit.fitHeight)),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(top: height/10),
                      child: Text(
                        'TruckON', 
                        //Common Logo for all 3 images
                        textScaleFactor: 6.0,
                      )),
                  Container(
                      padding: EdgeInsets.only(top: height*3/10),
                      child: Column(children: [
                        Text(
                          heading,
                          textScaleFactor: 2.5,
                        ),
                        Container(
                            padding: EdgeInsets.only(top: height/100,left: width/40,right: width/40),
                            child: Text(
                              desc,
                              textScaleFactor: 1.5,
                              textAlign: TextAlign.center,
                            )),
                      ])),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 25.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: i == 'assets/image1.jpg'
                                  ? Colors.red
                                  : Colors.white),
                        ),
                        Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: i == 'assets/image2.jpg'
                                  ? Colors.red
                                  : Colors.white),
                        ),
                        Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: i == 'assets/image3.jpg'
                                  ? Colors.red
                                  : Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    ));
  }
}
