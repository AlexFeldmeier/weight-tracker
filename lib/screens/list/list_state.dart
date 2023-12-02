part of 'list_cubit.dart';

@freezed
class ListState with _$ListState {
  const factory ListState.initial() = _Initial;

  const factory ListState.loaded(List<WeightModel> weights) = _Loaded;

  const factory ListState.error() = _Error;
}
