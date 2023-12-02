import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weight_tracker/models/weight_model.dart';
import 'package:weight_tracker/repositories/weight_repository.dart';

part 'list_cubit.freezed.dart';
part 'list_state.dart';

class ListCubit extends Cubit<ListState> {
  ListCubit(WeightRepository weightRepository) : super(const ListState.initial()) {
    weightRepository.getWeights().listen((weights) {
      if (weights == null) {
        emit(const ListState.error());
        return;
      }
      emit(ListState.loaded(weights));
    });
  }
}
