import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../animal_detail_screen.dart';
import '../../resources/assetManager.dart';
import '../adoption_home/adoption_screen.dart';

class Dogs extends StatelessWidget {
  Dogs({ key}) : super(key: key);

  List<Animal> animals(double w) {
    return [
      Animal(
        name: 'Golden',
        scientificName: 'Dog breed',
        age: 12,
        distanceToUser: '1.1 km',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog1,
          width: w * 0.33,
          // scale: 3.2,
        ),
        backgroundColor: Color.fromRGBO(203, 213, 216, 1.0),
      ),
      Animal(
        name: 'Husky',
        scientificName: 'Dog breed',
        age: 15,
        isFemale: false,
        distanceToUser: '7.8 km',
        image: Image.asset(
          AssetsManager.dog2,
          // scale: 3.5,
          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(99, 158, 136, 0.781),
      ),
      Animal(
        name: 'Eskimo',
        scientificName: 'Dog breed',
        age: 14,
        distanceToUser: '5.2 km',
        isFemale: false,
        image: Image.asset(
          AssetsManager.dog3,
          // scale: 3.2,
          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(194, 180, 237, 1),
      ),
      Animal(
        name: 'Maltipoo',
        scientificName: 'Abyssinian cat',
        age: 11,
        distanceToUser: '3.5 km',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog4,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),
    ];
  }

  List<String> animalTypes = [
    'Cats',
    'Dogs',
    'Parrots',
  ];

  List<IconData> animalIcons = [
    FontAwesomeIcons.cat,
    FontAwesomeIcons.dog,
    FontAwesomeIcons.crow,
  ];

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Container(
      child: ListView.builder(
          padding: EdgeInsets.only(
            top: 10.0,
          ),
          itemCount: animals(w).length,
          itemBuilder: (context, index) {
            final animal = animals(w)[index];

            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AnimalDetailScreen(animal: animal);
                }));
              },
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: 10.0,
                  right: 20.0,
                  left: 20.0,
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.circular(20.0),
                      elevation: 4.0,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 20.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              width: w * 0.4,
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Text(
                                        animal.name,
                                        style: TextStyle(
                                          fontSize: 26.0,
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Icon(
                                        animal.isFemale
                                            ? FontAwesomeIcons.venus
                                            : FontAwesomeIcons.mars,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    animal.scientificName,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    '${animal.age} years old',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.mapMarkerAlt,
                                        color: Theme.of(context).primaryColor,
                                        size: 16.0,
                                      ),
                                      SizedBox(
                                        width: 6.0,
                                      ),
                                      Text(
                                        'Distance: ${animal.distanceToUser}',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: animal.backgroundColor,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          height: 190.0,
                          width: w * 0.4,
                        ),
                        Hero(
                          tag: animal.name,
                          child: animal.image,
                        ),
                      ],
                      alignment: Alignment.center,
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
