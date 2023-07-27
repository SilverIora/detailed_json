import 'dart:convert';

import 'package:design/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class HomePageProvider extends ChangeNotifier {
  ProductModel? product;

  HomePageProvider() {
    print("HomePageProvider constructured");
  }

  Future<void> initData() async {
    print("initData started");
    var jsonString = await rootBundle.loadString('assets/item_data2.json');
    await Future.delayed(Duration(seconds: 1));
    Map<String, dynamic> jsonDecoded = jsonDecode(jsonString);
    product = ProductModel.fromJson(jsonDecoded);
    print("initData completed");
    notifyListeners();
  }
}
