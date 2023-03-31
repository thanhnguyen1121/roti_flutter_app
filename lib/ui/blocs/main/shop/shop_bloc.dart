import 'package:flutter_application/ui/blocs/main/shop/shop_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopBloc extends Cubit<ShopState> {
  ShopBloc() : super(const ShopState.loading());
}
