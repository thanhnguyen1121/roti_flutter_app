import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.freezed.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState() = DashboardStateData;

  const factory DashboardState.loading() = DashboardStateLoading;

  const factory DashboardState.error(dynamic error) = DashboardStateError;
}
