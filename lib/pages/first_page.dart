import 'package:flutter/material.dart';
import 'package:plant_app/pages/login_screen.dart';
import 'package:plant_app/widgets/thames.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int indexPages = 0;
  List listOfTexts = const [
    {
      'title': 'Identify Plants',
      'subTitle':
          'You can identify the plants you don\'t know \nthrough your camera',
      'image': 'images/phone.png',
    },
    {
      'title': 'Learn Many Plants Species',
      'subTitle':
          'Let\'s learn about the many plant species that \nexist in this world',
      'image': 'images/list.png',
    },
    {
      'title': 'Read Many Articles About Plant',
      'subTitle':
          'Let\'s learn more about beautiful plants and read \nmany articles about plants and gardening',
      'image': 'images/read.png',
    },
  ];

  void changePages() {
    if (indexPages == (listOfTexts.length - 1)) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    } else {
      setState(() {
        indexPages = indexPages + 1;
        print(indexPages);
        print('coba1');
      });
    }
    print(indexPages);
    print(listOfTexts.length);
    print('coba');
  }

  Widget _boxDot(int index) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 7,
      width: 7,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: indexPages == index
            ? const Color(0xff2DDA93)
            : const Color(0xFFDBDBDB),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: _deviceSize.height,
        width: _deviceSize.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 147, left: 23, right: 23),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  listOfTexts[indexPages]['image'],
                  height: 255.14,
                  width: 255,
                ),
              ),
              const SizedBox(height: 64),
              Text(
                listOfTexts[indexPages]['title'],
                style: titleTextStyle,
              ),
              const SizedBox(height: 23),
              Text(
                listOfTexts[indexPages]['subTitle'],
                style: subTitleTextStyle,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: listOfTexts
                    .asMap()
                    .entries
                    .map((MapEntry e) => _boxDot(e.key))
                    .toList(),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 23, right: 23, bottom: 23),
        child: buttonFlat(
          label: 'Next',
          heightButton: 50,
          widthButton: _deviceSize.width * 0.75,
          onPress: () => changePages(),
        ),
      ),
    );
  }
}
