// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomersModelImpl _$$CustomersModelImplFromJson(Map<String, dynamic> json) =>
    _$CustomersModelImpl(
      id: json['id'] as int,
      name: json['name'] as String?,
      profilePic: json['profilePic'] as String?,
      street: json['street'] as String?,
      state: json['state'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$$CustomersModelImplToJson(
        _$CustomersModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profilePic': instance.profilePic,
      'street': instance.street,
      'state': instance.state,
      'city': instance.city,
    };
