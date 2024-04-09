import 'package:e_commerce_app/controller/bloc/customer_bloc/customers_bloc.dart';
import 'package:e_commerce_app/view/widgets/show_model_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextFieldWidget extends StatelessWidget {
  final bool? isProduct;
  final TextEditingController? textEditingController;
  final void Function(String)? onChanged;
  const TextFieldWidget({
    super.key,
    required this.isProduct,
    required this.textEditingController,
    this.onChanged,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        onChanged: onChanged,
        controller: textEditingController,
        decoration: InputDecoration(
            prefixIcon: const Icon(
              CupertinoIcons.search,
              color: Colors.grey,
              size: 20,
            ),
            suffixIcon: isProduct == true
                ? Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.qr_code_scanner_outlined),
                        const SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('Fruits'),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                        )
                      ],
                    ))
                : Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.qr_code_scanner_outlined),
                        const SizedBox(
                          width: 8,
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return BlocProvider<CustomersBloc>(
                                  create: (context) => CustomersBloc(),
                                  child: ShowBottomWidget());
                              },
                            );
                          },
                          child: const CircleAvatar(
                            radius: 12,
                            backgroundColor: Color(0xFF17479b),
                            child: Icon(
                              Icons.add,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
            contentPadding: const EdgeInsets.symmetric(vertical: 8),
            hintText: 'Search',
            hintStyle: const TextStyle(
                color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
