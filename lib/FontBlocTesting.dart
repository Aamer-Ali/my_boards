import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_boards/UserLoginBloc/user_login_bloc.dart';

//
// class FontBlocTesting extends StatefulWidget {
//   @override
//   _FontBlocTestingState createState() => _FontBlocTestingState();
// }
//
// class _FontBlocTestingState extends State<FontBlocTesting> {
//   double _currentSliderValue = 0.0;
//   double _maxSliderValue = 30;
//   bool _currentIsBoldValue = false;
//   bool _currentIsItalicValue = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Bloc Text Changer')),
//       body: Container(
//         margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                   flex: 8,
//                   child: Slider(
//                     value: _currentSliderValue,
//                     min: 0,
//                     divisions: _maxSliderValue.toInt(),
//                     max: _maxSliderValue,
//                     onChanged: (double value) {
//                       setState(() {
//                         _currentSliderValue = value;
//                       });
//                     },
//                   ),
//                 ),
//                 Expanded(flex: 2, child: Text("$_currentSliderValue")),
//               ],
//             ),
//             Row(
//               children: [
//                 Text("Is Bold"),
//                 Checkbox(
//                     value: _currentIsBoldValue,
//                     onChanged: (bool value) {
//                       setState(() {
//                         _currentIsBoldValue = !_currentIsBoldValue;
//                       });
//                     })
//               ],
//             ),
//             Row(
//               children: [
//                 Text("Is Italic"),
//                 Checkbox(
//                     value: _currentIsItalicValue,
//                     onChanged: (bool value) {
//                       setState(() {
//                         _currentIsItalicValue = !_currentIsItalicValue;
//                       });
//                     })
//               ],
//             ),
//             Text(
//               "This is Going to be the text which is goint to change its properties onthe basis of the above given toggles...",
//               style: TextStyle(
//                   fontStyle: _currentIsItalicValue
//                       ? FontStyle.italic
//                       : FontStyle.normal,
//                   fontSize: _currentSliderValue,
//                   fontWeight: _currentIsBoldValue
//                       ? FontWeight.bold
//                       : FontWeight.normal),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class FontBlocTesting extends StatelessWidget {
  double _currentSliderValue = 0.0;
  double _maxSliderValue = 30;
  bool _currentIsBoldValue = false;
  bool _currentIsItalicValue = false;

  @override
  Widget build(BuildContext context) {
    final UserLoginBloc userLoginBloc = BlocProvider.of<UserLoginBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Bloc Text Changer')),
      body:
          BlocBuilder<UserLoginBloc, UserLoginState>(builder: (context, state) {
        return Container(
          margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Slider(
                      value: state.sliderFontSize,
                      min: 0,
                      divisions: _maxSliderValue.toInt(),
                      max: _maxSliderValue,
                      onChanged: (double value) {
                        userLoginBloc.add(FontSize(value));
                      },
                    ),
                  ),
                  Expanded(flex: 2, child: Text("$_currentSliderValue")),
                ],
              ),
              Row(
                children: [
                  Text("Is Bold"),
                  Checkbox(
                      value: state.isBold,
                      onChanged: (bool value) {
                        userLoginBloc.add(Bold(value));
                      })
                ],
              ),
              Row(
                children: [
                  Text("Is Italic"),
                  Checkbox(
                      value: state.isItalic,
                      onChanged: (bool value) {
                        userLoginBloc.add(Italic(value));
                      })
                ],
              ),
              Text(
                "This is Going to be the text which is goint to change its properties onthe basis of the above given toggles...",
                style: TextStyle(
                    fontStyle: _currentIsItalicValue
                        ? FontStyle.italic
                        : FontStyle.normal,
                    fontSize: state.sliderFontSize,
                    fontWeight: _currentIsBoldValue
                        ? FontWeight.bold
                        : FontWeight.normal),
              ),
            ],
          ),
        );
      }),
    );
  }
}
