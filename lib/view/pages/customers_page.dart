import 'package:e_commerce_app/controller/bloc/customer_bloc/customers_bloc.dart';
import 'package:e_commerce_app/controller/bloc/customer_bloc/customers_bloc_state.dart';
import 'package:e_commerce_app/view/widgets/appbar_widget.dart';
import 'package:e_commerce_app/view/widgets/bottombar_widget.dart';
import 'package:e_commerce_app/view/widgets/customers_list_widget.dart';
import 'package:e_commerce_app/view/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomerPage extends HookWidget {
  const CustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final customersController = useTextEditingController();
    final customerBloc = context.read<CustomersBloc>();

    useEffect(() {
      Future.delayed(
        Duration.zero,
        () {
          customerBloc.add(
            GetCustomersEvent(),
          );
        },
      );
      return null;
    }, []);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(130),
            child: Column(
              children: [
                const AppBarWidget(
                  title: 'Customers',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFieldWidget(
                      onChanged: (text) {
                        customerBloc.add(
                            SearchCustomersEvent(customersController.text));
                      },
                      isProduct: false,
                      textEditingController: customersController),
                )
              ],
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  child: BlocBuilder<CustomersBloc, CustomersState>(
                    builder: (context, state) {
                      if (state.customers == null) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state.error != null) {
                        return Text(state.error.toString());
                      } else {
                        final searchedCustomers = state.customers!
                            .where((customer) => customer.name!
                                .toLowerCase()
                                .contains(
                                    customersController.text.toLowerCase()))
                            .toList();
                        return CustomersListViewWidget(
                            entity: searchedCustomers);
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}
