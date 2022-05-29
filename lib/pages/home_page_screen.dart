import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 172,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF61D2C4),
                        Color(0xFF29D890),
                      ],
                    ),
                  )),
            ],
          ),
          Positioned(
            top: 150,
            left: 50,
            right: 50,
            child: RaisedButton(
              color: Colors.white,
              child: Text("Your Button"),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: _deviceSize.height,
            width: _deviceSize.width,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Text('Hello Taylor,'),
                        Text('Let’s Learn More About Plants'),
                      ],
                    ),
                    const SizedBox(
                      height: 47,
                      width: 47,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/user.png'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
