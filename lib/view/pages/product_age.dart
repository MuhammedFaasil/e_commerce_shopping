import 'package:e_commerce_app/view/widgets/appbar_widget.dart';
import 'package:e_commerce_app/view/widgets/bottombar_widget.dart';
import 'package:e_commerce_app/view/widgets/product_grid_widget.dart';
import 'package:e_commerce_app/view/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: const Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(85),
            child: AppBarWidget(title: 'Nesto Hypermarket')),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                TextFieldWidget(
                  widget: Text('Fruits'),
                ),
                SizedBox(
                  height: 16,
                ),
                ProductGridviewWidget()
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationWidget(),
      ),
    );
  }
}
