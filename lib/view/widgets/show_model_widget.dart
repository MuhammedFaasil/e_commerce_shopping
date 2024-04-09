import 'package:e_commerce_app/controller/bloc/customer_bloc/customers_bloc.dart';
import 'package:e_commerce_app/model/customers_model.dart';
import 'package:e_commerce_app/view/widgets/botto_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ShowBottomWidget extends HookWidget {
  const ShowBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final mobileController = useTextEditingController();
    final emailController = useTextEditingController();
    final streetController = useTextEditingController();
    final streetTwoController = useTextEditingController();
    final cityController = useTextEditingController();
    final pincodeController = useTextEditingController();
    final countryController = useTextEditingController();
    final stateController = useTextEditingController();
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
          height: 520,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(30)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                const Row(
                  children: [
                    Text(
                      'Add customer',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Expanded(child: SizedBox()),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 217, 237, 252),
                      radius: 13,
                      child: Center(
                          child: Icon(
                        Icons.close,
                        size: 18,
                        color: Color(0xFF17479b),
                      )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                BottomFieldWidget(
                  controller: nameController,
                  hintText: 'Customer Name',
                  helperText: 'Customer Name',
                ),
                const SizedBox(
                  height: 12,
                ),
                BottomFieldWidget(
                  controller: mobileController,
                  keyboardType: TextInputType.phone,
                  hintText: 'Mobile Number',
                  helperText: 'Mobile Number',
                ),
                const SizedBox(
                  height: 12,
                ),
                BottomFieldWidget(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Email',
                  helperText: 'Email',
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'Address',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                        child: BottomFieldWidget(
                      controller: streetController,
                      hintText: 'Street',
                      helperText: 'Street',
                    )),
                    const SizedBox(
                      width: 25,
                    ),
                    Expanded(
                        child: BottomFieldWidget(
                      controller: streetTwoController,
                      hintText: 'Street 2',
                      helperText: 'Street 2',
                    ))
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                        child: BottomFieldWidget(
                      controller: cityController,
                      hintText: 'City',
                      helperText: 'City',
                    )),
                    const SizedBox(
                      width: 25,
                    ),
                    Expanded(
                        child: BottomFieldWidget(
                      controller: pincodeController,
                      keyboardType: TextInputType.number,
                      hintText: 'Pin code',
                      helperText: 'Pin code',
                    ))
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                        child: BottomFieldWidget(
                      controller: countryController,
                      hintText: 'Country',
                      helperText: 'Country',
                    )),
                    const SizedBox(
                      width: 25,
                    ),
                    Expanded(
                        child: BottomFieldWidget(
                      controller: stateController,
                      hintText: 'State',
                      helperText: 'State',
                    ))
                  ],
                ),
                const Expanded(child: SizedBox()),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(bottom: 14),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF17479b)),
                    onPressed: () {
                      context.read<CustomersBloc>().add(AddNewCustomer(
                          CustomersModel(
                              id: null,
                              name: nameController.text,
                              mobileNumber: mobileController.text,
                              email: emailController.text,
                              streetTow: streetController.text,
                              pincode: int.parse(pincodeController.text),
                              profilePic: 'asset/images/Max-R_Headshot (1).jpg',
                              street: streetController.text,
                              state: stateController.text,
                              city: cityController.text,
                              country: countryController.text)));
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ))
              ],
            ),
          )),
    );
  }
}
