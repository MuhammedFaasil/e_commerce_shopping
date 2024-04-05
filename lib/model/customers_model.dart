import 'package:freezed_annotation/freezed_annotation.dart';

part 'customers_model.freezed.dart';
part 'customers_model.g.dart';

@freezed
class CustomersModel with _$CustomersModel {
    const factory CustomersModel({
        required int id,
        required String? name,
        required String? profilePic,
        required String? street,
        required String? state,
        required String? city,
    }) = _CustomersModel;

    factory CustomersModel.fromJson(Map<String, dynamic> json) => _$CustomersModelFromJson(json);
}
