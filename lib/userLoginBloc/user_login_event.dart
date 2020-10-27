part of 'user_login_bloc.dart';

@immutable
abstract class UserLoginEvent {
  final dynamic payLoad;

  UserLoginEvent({this.payLoad});
}

class FontSize extends UserLoginEvent {
  FontSize(double payLoad) : super(payLoad: payLoad);
}

class Bold extends UserLoginEvent {
  Bold(bool payLoad) : super(payLoad: payLoad);
}

class Italic extends UserLoginEvent {
  Italic(bool payLoad) : super(payLoad: payLoad);
}
