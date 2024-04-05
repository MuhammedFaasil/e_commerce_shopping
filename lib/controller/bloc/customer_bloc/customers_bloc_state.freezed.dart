// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customers_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomersState {
  List<CustomersModel>? get customers => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomersStateCopyWith<CustomersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersStateCopyWith<$Res> {
  factory $CustomersStateCopyWith(
          CustomersState value, $Res Function(CustomersState) then) =
      _$CustomersStateCopyWithImpl<$Res, CustomersState>;
  @useResult
  $Res call({List<CustomersModel>? customers, String? error});
}

/// @nodoc
class _$CustomersStateCopyWithImpl<$Res, $Val extends CustomersState>
    implements $CustomersStateCopyWith<$Res> {
  _$CustomersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      customers: freezed == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomersModel>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomersStateImplCopyWith<$Res>
    implements $CustomersStateCopyWith<$Res> {
  factory _$$CustomersStateImplCopyWith(_$CustomersStateImpl value,
          $Res Function(_$CustomersStateImpl) then) =
      __$$CustomersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CustomersModel>? customers, String? error});
}

/// @nodoc
class __$$CustomersStateImplCopyWithImpl<$Res>
    extends _$CustomersStateCopyWithImpl<$Res, _$CustomersStateImpl>
    implements _$$CustomersStateImplCopyWith<$Res> {
  __$$CustomersStateImplCopyWithImpl(
      _$CustomersStateImpl _value, $Res Function(_$CustomersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = freezed,
    Object? error = freezed,
  }) {
    return _then(_$CustomersStateImpl(
      customers: freezed == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomersModel>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CustomersStateImpl implements _CustomersState {
  _$CustomersStateImpl(
      {required final List<CustomersModel>? customers, required this.error})
      : _customers = customers;

  final List<CustomersModel>? _customers;
  @override
  List<CustomersModel>? get customers {
    final value = _customers;
    if (value == null) return null;
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'CustomersState(customers: $customers, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomersStateImpl &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_customers), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomersStateImplCopyWith<_$CustomersStateImpl> get copyWith =>
      __$$CustomersStateImplCopyWithImpl<_$CustomersStateImpl>(
          this, _$identity);
}

abstract class _CustomersState implements CustomersState {
  factory _CustomersState(
      {required final List<CustomersModel>? customers,
      required final String? error}) = _$CustomersStateImpl;

  @override
  List<CustomersModel>? get customers;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$CustomersStateImplCopyWith<_$CustomersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
