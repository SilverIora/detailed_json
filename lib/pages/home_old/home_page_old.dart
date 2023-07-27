import 'dart:convert';

import 'package:design/models/product_model.dart';
import 'package:design/widgets/carousel_widget2.dart';
import 'package:design/widgets/custom_appbar/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart' show rootBundle;

class HomePageOld extends StatefulWidget {
  const HomePageOld({super.key});

  @override
  State<HomePageOld> createState() => _HomePageOldState();
}

class _HomePageOldState extends State<HomePageOld> {
  ProductModel? product;

  @override
  void initState() {
    super.initState();
    initData();
// String jsonString = await rootBundle.loadString('assets/item_data2.json');
  }

  Future<void> initData() async {
    var jsonString = await rootBundle.loadString('assets/item_data2.json');
    await Future.delayed(Duration(seconds: 1));
    Map<String, dynamic> jsonDecoded = jsonDecode(jsonString);
    setState(() {
      product = ProductModel.fromJson(jsonDecoded);
    });
    print("Product loaded");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    if (product == null) {
      print("Product null");
      return Container(
        child: Text("Loading"),
      );
    }
    print("product null değil");
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple.shade100,
        appBar: CustomAppBar(),
        body: Column(
          children: [
            Center(child: Text('Title')),
            SizedBox(
              height: 16,
            ),
            CustomCarouselSlider2(),
            SizedBox(
              height: 16,
            ),
            Text(product!.title)
          ],
        ),
      ),
    );
  }
}
