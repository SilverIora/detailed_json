import 'package:carousel_slider/carousel_slider.dart';
import 'package:design/models/product_image_model.dart';
import 'package:design/widgets/custom_appbar/custom_appbar_controller.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlider2 extends StatelessWidget {
  CustomCarouselSlider2({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [],
      //items: imgList.map((item) => ImageContainer(item: item)),
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
      ),
    );
  }
}
