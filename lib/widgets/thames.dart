import 'package:flutter/material.dart';

TextStyle titleTextStyle = const TextStyle(
  fontFamily: 'SF-Pro-Text',
  fontSize: 19,
  fontWeight: FontWeight.w700,
  color: Color(0xff36455A),
);
TextStyle subTitleTextStyle = const TextStyle(
  fontFamily: 'SF-Pro-Text',
  fontSize: 13,
  color: Color(0xff6A6F7D),
);
TextStyle buttonTextStyle = const TextStyle(
  fontFamily: 'SF-Pro-Text',
  fontWeight: FontWeight.w700,
  color: Color(0xffffffff),
  fontSize: 15,
);
TextStyle besideSignUpTextStyle = const TextStyle(
  fontFamily: 'SF-Pro-Text',
  fontWeight: FontWeight.w400,
  color: Color(0xff6A6F7D),
  fontSize: 12,
);
TextStyle signUpTextStyle = const TextStyle(
  fontFamily: 'SF-Pro-Text',
  fontWeight: FontWeight.bold,
  color: Color(0xff2DDA93),
  fontSize: 12,
);

TextStyle helloTextStyle = const TextStyle(
  fontFamily: 'SF-Pro-Text',
  fontSize: 30,
  fontWeight: FontWeight.w700,
  color: Color(0xff36455A),
);
TextStyle rememberTextStyle = const TextStyle(
  fontFamily: 'SF-Pro-Text',
  fontSize: 11,
  fontWeight: FontWeight.w400,
  color: Color(0xff6A6F7D),
);
TextStyle forgotTextStyle = const TextStyle(
  fontFamily: 'SF-Pro-Text',
  fontSize: 11,
  fontWeight: FontWeight.w500,
  color: Color(0xff6A6F7D),
);

TextStyle underHelloTextStyle = const TextStyle(
  fontFamily: 'SF-Pro-Text',
  fontSize: 16,
  fontWeight: FontWeight.w700,
  color: Color(0xff36455A),
);
TextStyle labelTextFieldStyle = const TextStyle(
  fontFamily: 'SF-Pro-Text',
  fontSize: 12,
  fontWeight: FontWeight.w500,
  color: Color(0xff6A6F7D),
);
Color green = const Color(0xff2DDA93);

Widget buttonFlat({
  @required String label,
  double heightButton,
  @required double widthButton,
  Function onPress,
}) {
  return Container(
      height: heightButton,
      width: widthButton,
      decoration: const BoxDecoration(
        color: Color(0xff2DDA93),
      ),
      child: TextButton(
          onPressed: onPress,
          child: Text(
            label,
            style: buttonTextStyle,
          )));
}
