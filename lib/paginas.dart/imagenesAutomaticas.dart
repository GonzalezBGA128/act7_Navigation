import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MiImagenSlide extends StatefulWidget {
  const MiImagenSlide({super.key});

  @override
  State<MiImagenSlide> createState() => _MiImagenSlideState();
}

class _MiImagenSlideState extends State<MiImagenSlide> {
  final myitems = [
    Image.asset("assets/img1.png"),
    Image.asset("assets/img2.jpg"),
    Image.asset("assets/img3.jpg"),
    Image.asset("assets/img4.png"),
    Image.asset("assets/img5.png"),
    Image.asset("assets/img6.png"),
  ];

  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffedf3),
        appBar: AppBar(
          title: const Text(
            "Imagenes Slide0363",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          elevation: 3,
          backgroundColor: Color(0xfffb79a5),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    height: 200,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayInterval: const Duration(seconds: 2),
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        myCurrentIndex = index;
                      });
                    }),
                items: myitems,
              ),
              AnimatedSmoothIndicator(
                activeIndex: myCurrentIndex,
                count: myitems.length,
                effect: WormEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  spacing: 10,
                  dotColor: Color(0xffff86af),
                  activeDotColor: Color(0xff611b6d),
                  paintStyle: PaintingStyle.fill,
                ),
              )
            ],
          ),
        ));
  }
}
