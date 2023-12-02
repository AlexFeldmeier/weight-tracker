import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weight_tracker/models/weight_model.dart';
import 'package:weight_tracker/repositories/weight_repository.dart';

class FormCubit extends Cubit<WeightModel> {
  final WeightRepository weightRepository;
  late WeightModel _weightModel;

  FormCubit(this.weightRepository, WeightModel? existingWeightModel)
      : super(existingWeightModel ?? const WeightModel()) {
    _weightModel = state;
  }

  setWeight(double weight) {
    _weightModel = _weightModel.copyWith(lbs: weight);
    emit(_weightModel);
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

  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a weight';
    }
    final number = double.tryParse(value);
    if (number == null) {
      return 'Please enter a valid number';
    }
    return null;

  }
}
