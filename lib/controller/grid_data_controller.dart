import 'package:e_commerce_app/model/gridview_data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<ListViewModel> listofModels = [
  ListViewModel(title: 'Customers', icon: CupertinoIcons.group_solid),
  ListViewModel(title: 'Products', icon: CupertinoIcons.cube_box),
  ListViewModel(title: 'New Order', icon: Icons.addchart_sharp),
  ListViewModel(title: 'Return Order', icon: Icons.reset_tv),
  ListViewModel(title: 'Add Payment', icon: Icons.payments_rounded),
  ListViewModel(title: "Today's Order", icon: Icons.my_library_books_outlined),
  ListViewModel(title: "Today's Summary", icon: Icons.receipt_long),
  ListViewModel(title: 'Route', icon: Icons.repartition_sharp),
];
