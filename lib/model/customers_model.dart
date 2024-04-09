// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'customers_model.freezed.dart';
part 'customers_model.g.dart';

@freezed
class CustomersModel with _$CustomersModel {
  const factory CustomersModel({
    required int? id,
    required String? name,
    @JsonKey(name: 'mobile_Number') required String? mobileNumber,
    required String? email,
    @JsonKey(name: 'street_tow') required String? streetTow,
    required int? pincode,
    @JsonKey(name: 'profile_pic') required String? profilePic,
    required String? street,
    required String? state,
    required String? country,
    required String? city,
  }) = _CustomersModel;

  factory CustomersModel.fromJson(Map<String, dynamic> json) =>
      _$CustomersModelFromJson(json);
}
