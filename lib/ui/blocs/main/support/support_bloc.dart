import 'package:flutter_application/ui/blocs/main/support/support_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SupportBloc extends Cubit<SupportState> {
  SupportBloc() : super(const SupportState.loading());
}
