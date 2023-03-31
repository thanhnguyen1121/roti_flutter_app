import 'package:flutter_application/ui/blocs/main/configure/configure_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfigureBloc extends Cubit<ConfigureState> {
  ConfigureBloc() : super(const ConfigureState.loading());
}
