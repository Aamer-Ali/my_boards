import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_list_state.freezed.dart';

@freezed
abstract class UsersListState implements _$UsersListState{
  const UsersListState._();

  const factory UsersListState.initial() = UserListStateInitial;

}
