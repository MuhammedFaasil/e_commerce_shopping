// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomersModel _$CustomersModelFromJson(Map<String, dynamic> json) {
  return _CustomersModel.fromJson(json);
}

/// @nodoc
mixin _$CustomersModel {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get profilePic => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomersModelCopyWith<CustomersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersModelCopyWith<$Res> {
  factory $CustomersModelCopyWith(
          CustomersModel value, $Res Function(CustomersModel) then) =
      _$CustomersModelCopyWithImpl<$Res, CustomersModel>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? profilePic,
      String? street,
      String? state,
      String? city});
}

/// @nodoc
class _$CustomersModelCopyWithImpl<$Res, $Val extends CustomersModel>
    implements $CustomersModelCopyWith<$Res> {
  _$CustomersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? profilePic = freezed,
    Object? street = freezed,
    Object? state = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomersModelImplCopyWith<$Res>
    implements $CustomersModelCopyWith<$Res> {
  factory _$$CustomersModelImplCopyWith(_$CustomersModelImpl value,
          $Res Function(_$CustomersModelImpl) then) =
      __$$CustomersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? profilePic,
      String? street,
      String? state,
      String? city});
}

/// @nodoc
class __$$CustomersModelImplCopyWithImpl<$Res>
    extends _$CustomersModelCopyWithImpl<$Res, _$CustomersModelImpl>
    implements _$$CustomersModelImplCopyWith<$Res> {
  __$$CustomersModelImplCopyWithImpl(
      _$CustomersModelImpl _value, $Res Function(_$CustomersModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? profilePic = freezed,
    Object? street = freezed,
    Object? state = freezed,
    Object? city = freezed,
  }) {
    return _then(_$CustomersModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomersModelImpl implements _CustomersModel {
  const _$CustomersModelImpl(
      {required this.id,
      required this.name,
      required this.profilePic,
      required this.street,
      required this.state,
      required this.city});

  factory _$CustomersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomersModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? profilePic;
  @override
  final String? street;
  @override
  final String? state;
  @override
  final String? city;

  @override
  String toString() {
    return 'CustomersModel(id: $id, name: $name, profilePic: $profilePic, street: $street, state: $state, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomersModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, profilePic, street, state, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomersModelImplCopyWith<_$CustomersModelImpl> get copyWith =>
      __$$CustomersModelImplCopyWithImpl<_$CustomersModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomersModelImplToJson(
      this,
    );
  }
}

abstract class _CustomersModel implements CustomersModel {
  const factory _CustomersModel(
      {required final int id,
      required final String? name,
      required final String? profilePic,
      required final String? street,
      required final String? state,
      required final String? city}) = _$CustomersModelImpl;

  factory _CustomersModel.fromJson(Map<String, dynamic> json) =
      _$CustomersModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get profilePic;
  @override
  String? get street;
  @override
  String? get state;
  @override
  String? get city;
  @override
  @JsonKey(ignore: true)
  _$$CustomersModelImplCopyWith<_$CustomersModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
