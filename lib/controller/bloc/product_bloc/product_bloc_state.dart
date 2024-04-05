import 'package:e_commerce_app/model/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_bloc_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  factory ProductState({
    required List<Products>? product,
    required String? error,
  }) = _ProductState;
}
