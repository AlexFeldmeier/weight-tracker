// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weight_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeightModel _$WeightModelFromJson(Map<String, dynamic> json) {
  return _WeightModel.fromJson(json);
}

/// @nodoc
mixin _$WeightModel {
  String? get id => throw _privateConstructorUsedError;

  double? get lbs => throw _privateConstructorUsedError;

  @TimestampConverter()
  DateTime? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeightModelCopyWith<WeightModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightModelCopyWith<$Res> {
  factory $WeightModelCopyWith(WeightModel value, $Res Function(WeightModel) then) =
      _$WeightModelCopyWithImpl<$Res, WeightModel>;

  @useResult
  $Res call({String? id, double? lbs, @TimestampConverter() DateTime? timestamp});
}

/// @nodoc
class _$WeightModelCopyWithImpl<$Res, $Val extends WeightModel> implements $WeightModelCopyWith<$Res> {
  _$WeightModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lbs = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lbs: freezed == lbs
          ? _value.lbs
          : lbs // ignore: cast_nullable_to_non_nullable
              as double?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeightModelImplCopyWith<$Res> implements $WeightModelCopyWith<$Res> {
  factory _$$WeightModelImplCopyWith(_$WeightModelImpl value, $Res Function(_$WeightModelImpl) then) =
      __$$WeightModelImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String? id, double? lbs, @TimestampConverter() DateTime? timestamp});
}

/// @nodoc
class __$$WeightModelImplCopyWithImpl<$Res> extends _$WeightModelCopyWithImpl<$Res, _$WeightModelImpl>
    implements _$$WeightModelImplCopyWith<$Res> {
  __$$WeightModelImplCopyWithImpl(_$WeightModelImpl _value, $Res Function(_$WeightModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lbs = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$WeightModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lbs: freezed == lbs
          ? _value.lbs
          : lbs // ignore: cast_nullable_to_non_nullable
              as double?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeightModelImpl implements _WeightModel {
  const _$WeightModelImpl({this.id, this.lbs, @TimestampConverter() this.timestamp});

  factory _$WeightModelImpl.fromJson(Map<String, dynamic> json) => _$$WeightModelImplFromJson(json);

  @override
  final String? id;
  @override
  final double? lbs;
  @override
  @TimestampConverter()
  final DateTime? timestamp;

  @override
  String toString() {
    return 'WeightModel(id: $id, lbs: $lbs, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lbs, lbs) || other.lbs == lbs) &&
            (identical(other.timestamp, timestamp) || other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, lbs, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightModelImplCopyWith<_$WeightModelImpl> get copyWith =>
      __$$WeightModelImplCopyWithImpl<_$WeightModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeightModelImplToJson(
      this,
    );
  }
}

abstract class _WeightModel implements WeightModel {
  const factory _WeightModel({final String? id, final double? lbs, @TimestampConverter() final DateTime? timestamp}) =
      _$WeightModelImpl;

  factory _WeightModel.fromJson(Map<String, dynamic> json) = _$WeightModelImpl.fromJson;

  @override
  String? get id;

  @override
  double? get lbs;

  @override
  @TimestampConverter()
  DateTime? get timestamp;

  @override
  @JsonKey(ignore: true)
  _$$WeightModelImplCopyWith<_$WeightModelImpl> get copyWith => throw _privateConstructorUsedError;
}
