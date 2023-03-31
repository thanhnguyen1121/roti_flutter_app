import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboard_state.freezed.dart';

@freezed
abstract class OnboardState with _$OnboardState {
  const factory OnboardState() = OnboardStateData;

  const factory OnboardState.loading() = OnboardStateLoading;

  const factory OnboardState.error(dynamic error) = OnboardStateError;
}
