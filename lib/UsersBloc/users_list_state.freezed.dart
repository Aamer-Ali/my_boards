// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'users_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UsersListStateTearOff {
  const _$UsersListStateTearOff();

// ignore: unused_element
  UserListStateInitial initial() {
    return const UserListStateInitial();
  }
}

/// @nodoc
// ignore: unused_element
const $UsersListState = _$UsersListStateTearOff();

/// @nodoc
mixin _$UsersListState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(UserListStateInitial value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserListStateInitial value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UsersListStateCopyWith<$Res> {
  factory $UsersListStateCopyWith(
          UsersListState value, $Res Function(UsersListState) then) =
      _$UsersListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersListStateCopyWithImpl<$Res>
    implements $UsersListStateCopyWith<$Res> {
  _$UsersListStateCopyWithImpl(this._value, this._then);

  final UsersListState _value;
  // ignore: unused_field
  final $Res Function(UsersListState) _then;
}

/// @nodoc
abstract class $UserListStateInitialCopyWith<$Res> {
  factory $UserListStateInitialCopyWith(UserListStateInitial value,
          $Res Function(UserListStateInitial) then) =
      _$UserListStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserListStateInitialCopyWithImpl<$Res>
    extends _$UsersListStateCopyWithImpl<$Res>
    implements $UserListStateInitialCopyWith<$Res> {
  _$UserListStateInitialCopyWithImpl(
      UserListStateInitial _value, $Res Function(UserListStateInitial) _then)
      : super(_value, (v) => _then(v as UserListStateInitial));

  @override
  UserListStateInitial get _value => super._value as UserListStateInitial;
}

/// @nodoc
class _$UserListStateInitial extends UserListStateInitial {
  const _$UserListStateInitial() : super._();

  @override
  String toString() {
    return 'UsersListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserListStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
  }) {
    assert(initial != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(UserListStateInitial value),
  }) {
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserListStateInitial value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserListStateInitial extends UsersListState {
  const UserListStateInitial._() : super._();
  const factory UserListStateInitial() = _$UserListStateInitial;
}
