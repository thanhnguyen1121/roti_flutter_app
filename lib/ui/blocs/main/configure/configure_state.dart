import 'package:freezed_annotation/freezed_annotation.dart';
part 'configure_state.freezed.dart';

@freezed
abstract class ConfigureState with _$ConfigureState {
  const factory ConfigureState() = ConfigureStateData;
  const factory ConfigureState.loading() = ConfigureStateLoading;
  const factory ConfigureState.error(dynamic error) = ConfigureStateError;
}