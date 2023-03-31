import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_state.freezed.dart';

@freezed
abstract class SupportState with _$SupportState {
  const factory SupportState() = SupportStateData;

  const factory SupportState.loading() = SupportStateLoading;

  const factory SupportState.error(dynamic error) = SupportStateError;
}
