import 'package:e_commerce_app/view/widgets/appbar_widget.dart';
import 'package:e_commerce_app/view/widgets/customers_list_widget.dart';
import 'package:e_commerce_app/view/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomerPage extends HookWidget {
  const CustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final customerSearchController = useTextEditingController();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: const Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBarWidget(
              title: 'Customers',
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                TextFieldWidget(widget: Text('data')),
                SizedBox(
                  height: 24,
                ),
                CustomersListViewWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}