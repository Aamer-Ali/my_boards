import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_login_event.dart';

part 'user_login_state.dart';

class UserLoginBloc extends Bloc<UserLoginEvent, UserLoginState> {
  UserLoginBloc() : super(InitialUserLoginState());

  @override
  Stream<UserLoginState> mapEventToState(
    UserLoginEvent event,
  ) async* {
    if (event is FontSize) {
      yield NewSettingState.fromOldSettingState(state,
          sliderFontSize: event.payLoad);
    } else if (event is Bold) {
      yield NewSettingState.fromOldSettingState(state, isBold: event.payLoad);
    } else if (event is Italic) {
      yield NewSettingState.fromOldSettingState(state, isItalic: event.payLoad);
    }
  }
}
