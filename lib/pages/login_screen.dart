import 'package:flutter/material.dart';

import 'package:plant_app/widgets/thames.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

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
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
            Text(
              'Hello',
              style: helloTextStyle,
            ),
            const SizedBox(height: 10),
            Text(
              'Let’s Learn More About Plants',
              style: underHellotextStyle,
            ),
            textField('Username', labelTextfielStyle),
            textField('Password', labelTextfielStyle),
            Row(
              children: [
                SizedBox(
                  height: 7,
                  width: 7,
                  child: Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                ),
                Text('Remember me'),
              ],
            ),
            Image.asset('images/list.png'),
            const Text(
              'data',
              style: TextStyle(
                fontFamily: 'SF-Pro-Text',
                fontWeight: FontWeight.w500,
                fontSize: 48,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
