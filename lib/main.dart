import 'package:e_commerce_app/view/pages/customers_page.dart';
import 'package:e_commerce_app/view/pages/home_page.dart';
import 'package:e_commerce_app/view/pages/product_age.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: CustomerPage(),
    );
  }
}
