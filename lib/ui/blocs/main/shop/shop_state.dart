import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_state.freezed.dart';

@freezed
abstract class ShopState with _$ShopState {
  const factory ShopState() = ShopStateData;

  const factory ShopState.loading() = ShopStateLoading;

  const factory ShopState.error(dynamic error) = ShopStateError;
}
