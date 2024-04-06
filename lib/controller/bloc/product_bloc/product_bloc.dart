import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/controller/bloc/product_bloc/product_bloc_state.dart';
import 'package:e_commerce_app/controller/services/product_api_services.dart';

sealed class ProductEvent {}

class GetProductEvent implements ProductEvent {}

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc()
      : super(
          ProductState(product: null, error: null),
        ) {
    on<GetProductEvent>((event, emit) async {
      await fetchProducts(emit);
    });
  }

  Future<void> fetchProducts(Emitter<ProductState> emit) async {
    try {
      final  products = await ProductApiService().getProducts();
      emit(state.copyWith(product: products));
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }
}
