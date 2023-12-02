import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weight_tracker/models/weight_model.dart';
import 'package:weight_tracker/repositories/weight_repository.dart';

class FormCubit extends Cubit<WeightModel> {
  final WeightRepository weightRepository;
  late final WeightModel _weightModel;

  FormCubit(this.weightRepository, WeightModel? existingWeightModel)
      : super(existingWeightModel ?? const WeightModel()) {
    _weightModel = state;
  }

  setWeight(double weight) {
    return _weightModel.copyWith(lbs: weight);
  }

  Future<void> saveWeight() async {
    await weightRepository.updateWeight(_weightModel);
  }

  Future<void> deleteWeight() async {
    if (_weightModel.id == null) {
      return;
    }
    await weightRepository.deleteWeight(_weightModel.id!);
  }
}
