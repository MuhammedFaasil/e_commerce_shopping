// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomersModelImpl _$$CustomersModelImplFromJson(Map<String, dynamic> json) =>
    _$CustomersModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      mobileNumber: json['mobile_Number'] as String?,
      email: json['email'] as String?,
      streetTow: json['street_tow'] as String?,
      pincode: json['pincode'] as int?,
      profilePic: json['profile_pic'] as String?,
      street: json['street'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$$CustomersModelImplToJson(
        _$CustomersModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mobile_Number': instance.mobileNumber,
      'email': instance.email,
      'street_tow': instance.streetTow,
      'pincode': instance.pincode,
      'profile_pic': instance.profilePic,
      'street': instance.street,
      'state': instance.state,
      'country': instance.country,
      'city': instance.city,
    };
