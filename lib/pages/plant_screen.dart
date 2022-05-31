import 'package:flutter/material.dart';

import '../models/plant_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlantScreen extends StatelessWidget {
  final Plant plant;

  // ignore: use_key_in_widget_constructors
  const PlantScreen({this.plant});

  @override
  Widget build(BuildContext context) {
    print("build  plantscreen");
    final _deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: _deviceSize.height,
        width: _deviceSize.width,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: _deviceSize.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Hero(
                    tag: plant.imageUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image(
                        image: NetworkImage(plant.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back),
                        iconSize: 30.0,
                        color: Colors.white,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            // ignore: deprecated_member_use
                            icon: const Icon(FontAwesomeIcons.search),
                            iconSize: 25.0,
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            // ignore: deprecated_member_use
                            icon: const Icon(FontAwesomeIcons.sortAmountDown),
                            iconSize: 25.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        plant.nameOfPlant,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                          shadows: [
                            Shadow(
                                color: Colors.black.withOpacity(0.9),
                                offset: const Offset(5, 5),
                                blurRadius: 15),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            FontAwesomeIcons.dollarSign,
                            size: 9.0,
                            color: Colors.white70,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            plant.price,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 9.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Descriptions',
                          style: TextStyle(
                            fontFamily: 'SF-Pro-Text',
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(plant.description,
                          style: const TextStyle(
                            fontFamily: 'SF-Pro-Text',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                            color: Colors.black,
                          )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
