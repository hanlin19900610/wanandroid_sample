import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_state.freezed.dart';

@freezed
class ViewState<T> with _$ViewState<T> {
  const factory ViewState.idle() = Idle;

  const factory ViewState.loading() = Loading;

  const factory ViewState.ready(T data) = Ready<T>;

  const factory ViewState.error({required String error}) = Error;
}
