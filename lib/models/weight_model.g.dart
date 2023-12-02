// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeightModelImpl _$$WeightModelImplFromJson(Map<String, dynamic> json) => _$WeightModelImpl(
      id: json['id'] as String?,
      lbs: (json['lbs'] as num?)?.toDouble(),
      timestamp: const TimestampConverter().fromJson(json['timestamp'] as Timestamp?),
    );

Map<String, dynamic> _$$WeightModelImplToJson(_$WeightModelImpl instance) => <String, dynamic>{
      'id': instance.id,
      'lbs': instance.lbs,
      'timestamp': const TimestampConverter().toJson(instance.timestamp),
    };
