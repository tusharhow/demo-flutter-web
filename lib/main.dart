import 'package:flutter/material.dart';
import 'package:flutter_demo_web/screens/add_a_product_page.dart';
import 'package:flutter_demo_web/screens/checkout_page.dart';
import 'package:flutter_demo_web/screens/homepage.dart';
import 'package:flutter_demo_web/screens/individual_product.dart';
import 'package:flutter_demo_web/screens/upload_photo_page.dart';
import 'package:flutter_demo_web/screens/user_list_table.dart';
import 'package:flutter_demo_web/screens/revenue_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AddProductPage());
    //CheckoutPage, MyHomePage, UserListTable, RevenuePage
    //AddProductPage, IndividualProduct, UploadPhotoPage
  }
}
