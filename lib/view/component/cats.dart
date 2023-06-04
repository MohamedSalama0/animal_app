import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../animal_detail_screen.dart';
import '../../resources/assetManager.dart';
import '../adoption_home/adoption_screen.dart';

class Cats extends StatelessWidget {
  Cats({key}) : super(key: key);

  List<Animal> animals(double w) {
    return [
      Animal(
        name: 'Sola',
        scientificName: 'Abyssinian cat',
        age: '9-13',
        distanceToUser: '3.6 km',
        description: 'The Abyssinian is a breed of domestic short-haired cat with a distinctive "ticked" tabby coat, in which individual hairs are banded with different colors. They are also known simply as Abys.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.cat1,
          width: w * 0.4,
          // scale: 3.2,
          fit: BoxFit.fitHeight,
        ),
        backgroundColor: Color.fromRGBO(203, 213, 216, 1.0),
      ),
      Animal(
        name: 'Orion',
        scientificName: 'Abyssinian cat',
        age: '7-15',
        isFemale: false,
        distanceToUser: '7.8 km',
        description: 'The Abyssinian is a slender, fine-boned, medium-sized cat. The head is moderately wedge-shaped, with a slight break at the muzzle, and nose and chin ideally forming a straight vertical line when viewed in profile. They have alert, relatively large pointed ears. The eyes are almond-shaped and are gold, green, hazel or copper depending on coat color. ',
        image: Image.asset(
          AssetsManager.cat2,
          fit: BoxFit.fitHeight,
          // scale: 3.5,
          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(237, 214, 180, 1.0),
      ),
      Animal(
        name: 'Birman',
        scientificName: 'Abyssinian cat',
        age: '9-13',
        distanceToUser: '7.8 km',
        isFemale: false,
        description: 'The Birman, also called the "Sacred Cat of Burma", is a domestic cat breed. The Birman is a long-haired, colour-pointed cat distinguished by a silky coat, deep blue eyes, and contrasting white "gloves" on each paw. The breed name is derived from Birmanie, the French form of Burma.',
        image: Image.asset(
          AssetsManager.cat3,
          fit: BoxFit.cover,
          // scale: 3.2,
          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(194, 180, 237, 1),
      ),
      Animal(
        name: 'Angora',
        scientificName: 'Abyssinian cat',
        age: '12-18',
        distanceToUser: '7.8 km',
        description: 'The Turkish Angora is a breed of domestic cat. Turkish Angoras are one of the ancient, natural breeds of cat, having originated in central Anatolia. The breed has been documented as early as the 17th century. Outside of the United States, the breed is usually referred to as simply the Angora or Ankara cat.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.cat4,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(174, 215, 206, 1),
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
