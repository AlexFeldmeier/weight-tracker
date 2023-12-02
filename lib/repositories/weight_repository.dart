import 'package:uuid/uuid.dart';
import 'package:weight_tracker/data_sources/weight_data_source.dart';
import 'package:weight_tracker/models/weight_model.dart';

class WeightRepository {
  final WeightDataSource _dataSource;

  WeightRepository(this._dataSource);

  Stream<List<WeightModel>?> getWeights() {
    return _dataSource.getWeights().map((shirtsData) {
      return shirtsData?.map((shirtData) => WeightModel.fromJson(shirtData)).toList();
    });
  }

  Future<void> updateWeight(WeightModel weightModel) async {
    if (weightModel.id == null) {
      weightModel = weightModel.copyWith(id: const Uuid().v4(), timestamp: DateTime.now());
    }
    await _dataSource.updateWeight(weightModel.id!, weightModel.toJson());
  }

  Future<void> deleteWeight(String id) async {
    await _dataSource.deleteWeight(id);
  }
}
