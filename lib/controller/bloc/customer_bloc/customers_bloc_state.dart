import 'package:e_commerce_app/model/customers_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customers_bloc_state.freezed.dart';

@freezed
class CustomersState with _$CustomersState {
  factory CustomersState({
    required List<CustomersModel>? customers,
    required String? error,
  }) = _CustomersState;
}
