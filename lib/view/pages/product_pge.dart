import 'package:e_commerce_app/controller/bloc/product_bloc/product_bloc.dart';
import 'package:e_commerce_app/controller/bloc/product_bloc/product_bloc_state.dart';
import 'package:e_commerce_app/view/widgets/appbar_widget.dart';
import 'package:e_commerce_app/view/widgets/bottombar_widget.dart';
import 'package:e_commerce_app/view/widgets/product_grid_widget.dart';
import 'package:e_commerce_app/view/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProductPage extends HookWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productController = useTextEditingController();
    useEffect(() {
      Future.delayed(
        Duration.zero,
        () {
          context.read<ProductBloc>().add(GetProductEvent());
        },
      );
      return null;
    }, []);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(130),
            child: Column(
              children: [
                const AppBarWidget(title: 'Nesto Hypermarket'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFieldWidget(
                      onChanged: (text) {
                        context
                            .read<ProductBloc>()
                            .add(SearchProductsEvent(productController.text));
                      },
                      isProduct: true,
                      textEditingController: productController),
                )
              ],
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  child: BlocBuilder<ProductBloc, ProductState>(
                    builder: (context, state) {
                      if (state.product == null) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state.error != null) {
                        return Text(state.error.toString());
                      } else {
                        final searchedCustomers = state.product!
                            .where((customer) => customer.name
                                .toLowerCase()
                                .contains(productController.text.toLowerCase()))
                            .toList();
                        return ProductGridviewWidget(entity: searchedCustomers);
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
