import 'package:flutter/material.dart';
import 'package:plant_app/pages/first_page.dart';
import 'package:plant_app/pages/home_page_screen.dart';

import 'package:plant_app/widgets/thames.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget textField(String label, TextStyle style) {
    return TextField(
      decoration: InputDecoration(
        label: Text(
          label,
          style: style,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print("build  loginScreen");
    final _deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: _deviceSize.height,
          width: _deviceSize.width,
          padding: const EdgeInsets.all(23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed:
                      // () {
                      //   Navigator.pop(context);
                      // },
                      () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FirstPage(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: helloTextStyle,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Let’s Learn More About Plants',
                    style: underHelloTextStyle,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  textField('Username', labelTextFieldStyle),
                  const SizedBox(
                    height: 30,
                  ),
                  textField('Password', labelTextFieldStyle),
                  const SizedBox(
                    height: 29,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Checkbox(
                            value: true,
                            onChanged: (newValue) {},
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Remember me',
                          style: rememberTextStyle,
                        ),
                      ],
                    ),
                    Text(
                      'Forgot Password?',
                      style: forgotTextStyle,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  buttonFlat(
                      label: 'LOGIN',
                      widthButton: _deviceSize.width * 0.75,
                      onPress: () => Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => HomePageScreen(),
                          ))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t Have Account?',
                        style: besideSignUpTextStyle,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign Up',
                            style: signUpTextStyle,
                          ))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
