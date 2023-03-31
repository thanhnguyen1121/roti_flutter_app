import 'package:flutter_application/ui/blocs/main/dashboard/dashboard_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardBloc extends Cubit<DashboardState> {
  DashboardBloc() : super(const DashboardState.loading());
}
