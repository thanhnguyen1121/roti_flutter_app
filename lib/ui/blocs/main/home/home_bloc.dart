import 'package:flutter_application/ui/blocs/main/home/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc() : super(const HomeState.loading());
}
