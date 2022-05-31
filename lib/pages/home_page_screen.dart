import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_app/widgets/plant_type_carousel.dart';

// ignore: use_key_in_widget_constructors
class HomePageScreen extends StatefulWidget {
  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedIdex = 0;
  final List _icons = [
    [
      'IDENTITY',
      FontAwesomeIcons.camera,
    ],
    [
      'SPECIES',
      FontAwesomeIcons.tree,
    ],
    [
      'ARTICLES',
      FontAwesomeIcons.bookOpen,
    ],
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIdex = index;
        });
        print(_selectedIdex);
      },
      child: Container(
        height: 76.0,
        width: 108,
        decoration: BoxDecoration(
          color: _selectedIdex == index
              ? Theme.of(context).primaryColor
              : const Color(0xffffffff),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            _icons[index][1],
            size: 25.0,
            color: _selectedIdex == index
                ? const Color(0xffffffff)
                : Theme.of(context).primaryColor,
          ),
          const SizedBox(
            height: 9,
          ),
          Text(
            _icons[index][0],
            style: TextStyle(
              fontFamily: 'SF-Pro-Text',
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: _selectedIdex == index
                  ? const Color(0xffffffff)
                  : const Color(0xff6A6F7D),
            ),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print("build  homeScreen");
    final _deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: _deviceSize.height,
        width: _deviceSize.width,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: _deviceSize.width,
                    height: 172,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF61D2C4),
                          Color(0xFF29D890),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 23, right: 23, top: 75),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Hello Taylor,',
                                style: TextStyle(
                                  fontFamily: 'SF-Pro-Text',
                                  fontSize: 21,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                'Let’s Learn More About Plants',
                                style: TextStyle(
                                  fontFamily: 'SF-Pro-Text',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffffffff),
                                ),
                              ),
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
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: _icons
                        .asMap()
                        .entries
                        .map(
                          (MapEntry icons) => _buildIcon(icons.key),
                        )
                        .toList(),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  PlantCarousel(),
                ],
              ),
              Positioned(
                top: 145,
                left: 50,
                right: 50,
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 10,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: '🔍  Search',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
