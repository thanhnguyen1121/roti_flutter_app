import 'package:freezed_annotation/freezed_annotation.dart';
part 'notification_state.freezed.dart';

@freezed
abstract class NotificationState with _$NotificationState {
  const factory NotificationState() = NotificationStateData;
  const factory NotificationState.loading() = NotificationStateLoading;
  const factory NotificationState.error(dynamic error) = NotificationStateError;
}