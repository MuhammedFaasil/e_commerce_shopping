import 'package:e_commerce_app/controller/bloc/customer_bloc/customers_bloc.dart';
import 'package:e_commerce_app/model/product_model.dart';
import 'package:e_commerce_app/view/pages/customers_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductGridviewWidget extends StatelessWidget {
  final List<Products> entity;
  const ProductGridviewWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        mainAxisExtent: 140,
      ),
      itemCount: entity.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(blurRadius: 10, color: Colors.grey.withOpacity(.30))
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Column(
                children: [
                  const Center(
                      child: SizedBox(
                    height: 75,
                    width: 80,
                    child: Image(image: AssetImage('asset/images/fruits.png')),
                  )),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entity[index].name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(entity[index].price.toString()),
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    BlocProvider<CustomersBloc>(
                                  create: (context) => CustomersBloc(),
                                  child: const CustomerPage(),
                                ),
                              ));
                        },
                        child: Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xFF17479b),
                          ),
                          child: const Center(
                            child: Text(
                              'Add',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
