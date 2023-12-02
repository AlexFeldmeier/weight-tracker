import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weight_tracker/utils/timestamp_converter.dart';

part 'weight_model.freezed.dart';
part 'weight_model.g.dart';

@freezed
class WeightModel with _$WeightModel {
  const factory WeightModel({
    String? id,
    double? lbs,
    @TimestampConverter() DateTime? timestamp,
  }) = _WeightModel;

  factory WeightModel.fromJson(Map<String, dynamic> json) => _$WeightModelFromJson(json);
}
