import 'package:e_commerce_app/model/customers_model.dart';
import 'package:e_commerce_app/view/widgets/customer_details_widget.dart';
import 'package:flutter/material.dart';

class ViewCustomer extends StatelessWidget {
  final CustomersModel model;
  const ViewCustomer({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
                image: AssetImage('asset/images/Max-R_Headshot (1).jpg')),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Customerdetails(
          fieldKey: 'Name',
          fieldValue: model.name!,
        ),
        Customerdetails(
          fieldKey: 'ID',
          fieldValue: model.id!.toString(),
        ),
        Customerdetails(
          fieldKey: 'Mobile',
          fieldValue: model.mobileNumber ?? 'Null',
        ),
        Customerdetails(
          fieldKey: 'Email',
          fieldValue: model.email ?? 'Null',
        ),
        Customerdetails(
          fieldKey: 'Street',
          fieldValue: model.street ?? 'null',
        ),
        Customerdetails(
          fieldKey: 'Street 2',
          fieldValue: model.streetTow ?? 'null',
        ),
        Customerdetails(
          fieldKey: 'PIN code',
          fieldValue: model.pincode!.toString(),
        ),
        Customerdetails(
          fieldKey: 'City',
          fieldValue: model.city!,
        ),
        Customerdetails(
          fieldKey: 'State',
          fieldValue: model.state!,
        ),
      ],
    );
  }
}
