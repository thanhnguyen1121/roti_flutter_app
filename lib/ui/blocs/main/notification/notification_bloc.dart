import 'package:flutter_application/ui/blocs/main/notification/notification_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationBloc extends Cubit<NotificationState> {
  NotificationBloc() : super(const NotificationState.loading());
}
