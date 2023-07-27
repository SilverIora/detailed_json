import 'dart:convert';
import 'package:design/pages/home/home_page.dart';
import 'package:design/pages/home/home_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/home_old/home_page_old.dart';

import 'package:flutter/services.dart' show rootBundle;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // convertToJson();

  runApp(const MyApp());
}

// Future<void> convertToJson() async {
//   String jsonString = await rootBundle.loadString('assets/item_data2.json');
//   Map<String, dynamic> jsonDecoded = jsonDecode(jsonString);
//   ProductModel product = ProductModel.fromJson(jsonDecoded);
//   print(jsonString);
//   print(jsonDecoded);
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print("main build");
    return MaterialApp(
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: ChangeNotifierProvider(
        create: (context) => HomePageProvider(),
        child: const HomePage(),
      ),
    );
  }
}
