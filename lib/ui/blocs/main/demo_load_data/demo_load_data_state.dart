import 'package:flutter_application/domain/entity/post_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'demo_load_data_state.freezed.dart';

@freezed
abstract class DemoLoadDataState with _$DemoLoadDataState {
  const factory DemoLoadDataState(List<PostModel> models, bool enablePullUp) =
      DemoLoadDataStateData;

  const factory DemoLoadDataState.loading() = DemoLoadDataStateLoading;

  const factory DemoLoadDataState.error(dynamic error) = DemoLoadDataStateError;
}
