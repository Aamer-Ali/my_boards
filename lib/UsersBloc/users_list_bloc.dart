import 'dart:async';
import 'package:bloc/bloc.dart';
import 'bloc.dart';

class UsersListBloc extends Bloc<UsersListEvent, UsersListState> {
  UsersListBloc(UsersListState initialState) : super(initialState);

  UsersListState get initialState => UsersListState.initial();

  // UsersListBloc() : super(UsersListInitial());

  @override
  Stream<UsersListState> mapEventToState(
    UsersListEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
