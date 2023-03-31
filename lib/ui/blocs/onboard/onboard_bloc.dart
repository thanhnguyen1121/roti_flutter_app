import 'package:flutter_application/ui/blocs/onboard/onboard_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardBloc extends Cubit<OnboardState> {
  OnboardBloc() : super(const OnboardState.loading());
}
