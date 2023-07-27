import 'dart:convert';

import 'package:design/models/product_model.dart';
import 'package:design/pages/home/home_page_provider.dart';
import 'package:design/widgets/carousel_widget2.dart';
import 'package:design/widgets/custom_appbar/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart' show rootBundle;
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(() {
      Provider.of<HomePageProvider>(context, listen: false).initData();
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build");

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple.shade100,
        appBar: CustomAppBar(),
        body: Consumer<HomePageProvider>(
          builder: (context, provider, child) {
            print("provider builder called");
            return Column(
              children: [
                Center(child: Text('Title')),
                SizedBox(
                  height: 16,
                ),
                CustomCarouselSlider2(),
                SizedBox(
                  height: 16,
                ),
                provider.product == null
                    ? Container()
                    : Text(
                        provider.product!.title,
                        style: TextStyle(fontSize: 50),
                      ),
              ],
            );
          },
        ),
      ),
    );
  }
}
