import 'package:flutter/material.dart';

Image appleImage = Image.network(
    'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/800px-Apple_logo_black.svg.png');
Image androidImage = Image.network(
    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Android_robot.svg/1745px-Android_robot.svg.png');
Image xiaomiImage = Image.network(
    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Unofficial_Windows_logo_variant_-_2002%E2%80%932012_%28Multicolored%29.svg/2321px-Unofficial_Windows_logo_variant_-_2002%E2%80%932012_%28Multicolored%29.svg.png');

class CustomAppBarController with ChangeNotifier {
  Image appbarImage = appleImage;
  void init() {
    // (if productProvider.title == android){
    // appbarImage = androidImage;
    // notifyListeners();}
    //(if productProvider.title == xiaomi){
    // appbarImage = androidImage
    // notifyListeners();}
    //(if productProvider.title == apple){
    // appbarImage = appleImage
    // notifyListeners();}
  }
}
