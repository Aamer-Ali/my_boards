part of 'user_login_bloc.dart';

@immutable
abstract class UserLoginState {
  final double sliderFontSize;
  final bool isBold;
  final bool isItalic;

  UserLoginState({this.sliderFontSize, this.isBold, this.isItalic});

  double get fontSize => sliderFontSize * 30;
}

class InitialUserLoginState extends UserLoginState {
  InitialUserLoginState()
      : super(sliderFontSize: 0.5, isBold: false, isItalic: false);
}

class NewSettingState extends UserLoginState {
  NewSettingState.fromOldSettingState(UserLoginState oldState,
      {double sliderFontSize, bool isBold, bool isItalic})
      : super(
            sliderFontSize: sliderFontSize ?? oldState.sliderFontSize,
            isBold: isBold ?? oldState.isBold,
            isItalic: isItalic ?? oldState.isItalic);
}
