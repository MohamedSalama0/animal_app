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

      Animal(
        name: 'Maine Coon',
        scientificName: 'Abyssinian cat',
        age: '12-15',
        distanceToUser: '2.4 km',
        description: 'Maine Coons are large, muscular cats with tufted ears and a shaggy coat. They are friendly, sociable, and often described as "gentle giants." Maine Coons enjoy interactive play and are known for their intelligence.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.cat5,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(174, 215, 206, 1),
      ),

      Animal(
        name: 'Siamese',
        scientificName: 'Abyssinian cat',
        age: '10-12',
        distanceToUser: '2.8 km',
        description: 'Siamese cats are known for their striking blue eyes and color-pointed coat. They are intelligent, vocal, and form strong bonds with their owners. Siamese cats are active and enjoy engaging with their human companions.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.cat6,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(174, 215, 206, 1),
      ),

      Animal(
        name: 'Ragdolls',
        scientificName: 'Abyssinian cat',
        age: '12-17',
        distanceToUser: '3.8 km',
        description: 'Ragdolls are large, affectionate cats with a semi-long, silky coat. They have a docile nature and often go limp when picked up, hence the name "Ragdoll." Ragdolls are known for their gentle temperament and tendency to form strong bonds with their owners.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.cat7,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(174, 215, 206, 1),
      ),

      Animal(
        name: 'Bengals',
        scientificName: 'Abyssinian cat',
        age: '10-16',
        distanceToUser: '2.8 km',
        description: 'Bengals have a wild appearance with their distinctive spotted or marbled coat. They are active, playful, and known for their love of water. Bengals require mental and physical stimulation to keep them entertained.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.cat8,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(174, 215, 206, 1),
      ),

      Animal(
        name: 'Scottish Folds',
        scientificName: 'Abyssinian cat',
        age: '11-14',
        distanceToUser: '0.8 km',
        description: 'Scottish Folds are recognized by their unique folded ears. They are friendly, affectionate cats with a sweet disposition. Scottish Folds enjoy interactive play and socializing with their human companions.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.cat9,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(174, 215, 206, 1),
      ),

      Animal(
        name: 'Sphynx',
        scientificName: 'Abyssinian cat',
        age: '12-16',
        distanceToUser: '0.8 km',
        description: 'Sphynx cats are hairless and have a warm, soft, and wrinkled skin. They are active, social cats that require special care to maintain their skin health. Sphynx cats are known for their extroverted and mischievous nature.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.cat10,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(174, 215, 206, 1),
      ),

      Animal(
        name: 'Abyssinians',
        scientificName: 'Abyssinian cat',
        age: '12-16',
        distanceToUser: '0.8 km',
        description: 'Abyssinians have a short, ticked coat and are known for their active and playful nature. They are intelligent cats that enjoy being involved in their owners activities. Abyssinians form strong bonds with their families.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.cat11,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(174, 215, 206, 1),
      ),

      Animal(
        name: 'Russian Blues',
        scientificName: 'Abyssinian cat',
        age: '15-20',
        distanceToUser: '0.8 km',
        description: 'Russian Blues have a short, dense, and bluish-gray coat. They are gentle and reserved cats that form strong bonds with their families. Russian Blues are known for their intelligence and independence.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.cat12,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(174, 215, 206, 1),
      ),

      Animal(
        name: 'Birmans',
        scientificName: 'Abyssinian cat',
        age: '12-16',
        distanceToUser: '0.8 km',
        description: 'Birmans are medium to large-sized cats with a semi-longhaired coat. They have a sturdy and muscular build with a broad chest and medium-sized legs. Their most distinctive feature is their striking blue almond-shaped eyes. The coat is usually cream or fawn in color with darker points on the ears, face, legs, and tail.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.cat13,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(174, 215, 206, 1),
      ),

      Animal(
        name: ' silky coat',
        scientificName: 'Abyssinian cat',
        age: '12-16',
        distanceToUser: '0.8 km',
        description: 'They are affectionate, gentle cats with a friendly and docile personality. Birmans enjoy interactive play and are often described as social and people-oriented.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.cat14,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(174, 215, 206, 1),
      ),

      Animal(
        name: ' Somalis',
        scientificName: 'Abyssinian cat',
        age: '10-12',
        distanceToUser: '0.8 km',
        description: 'Somalis have a semi-long, fox-like coat and a playful and active nature. They are intelligent cats that enjoy interactive play and mental stimulation. Somalis are known for their curiosity and agility..',
        isFemale: true,
        image: Image.asset(
          AssetsManager.cat15,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(174, 215, 206, 1),
      ),

      Animal(
        name: ' Norwegian Forest',
        scientificName: 'Abyssinian cat',
        age: '14-16',
        distanceToUser: '0.8 km',
        description: 'Norwegian Forest cats have a thick, double-layered coat and tufted ears. They are large, sturdy cats with a gentle and friendly demeanor. Norwegian Forest cats are known for their love of climbing and outdoor exploration',
        isFemale: true,
        image: Image.asset(
          AssetsManager.cat16,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(174, 215, 206, 1),
      ),

      Animal(
        name: ' British Shorthairs',
        scientificName: 'Abyssinian cat',
        age: '12-20',
        distanceToUser: '0.8 km',
        description: 'British Shorthairs have a solid and muscular body with a broad chest and short legs. They have a round face with full cheeks, large round eyes, and a short nose. The most iconic feature of British Shorthairs is their dense and plush coat, which comes in various colors and patterns, including solid, tabby, tortoiseshell, and colorpoint',
        isFemale: true,
        image: Image.asset(
          AssetsManager.cat17,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(174, 215, 206, 1),
      ),

      Animal(
        name: ' Devon Rex',
        scientificName: 'Abyssinian cat',
        age: '9-15',
        distanceToUser: '0.8 km',
        description: 'Devon Rex cats have a curly, soft coat and large ears. They are playful, mischievous, and highly active cats. Devon Rex cats are known for their social nature and ability to adapt well to different environments',
        isFemale: true,
        image: Image.asset(
          AssetsManager.cat18,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(174, 215, 206, 1),
      ),

      Animal(
        name: ' Exotic Shorthairs ',
        scientificName: 'Abyssinian cat',
        age: '12-15',
        distanceToUser: '0.8 km',
        description: 'Exotic Shorthairs have a distinct appearance with a sturdy and muscular build. They have a round and broad face with a flat nose and large, round, and expressive eyes. Their dense and plush coat is short in length, similar to that of the American',
        isFemale: true,
        image: Image.asset(
          AssetsManager.cat19,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(174, 215, 206, 1),
      ),

      Animal(
        name: ' Burmese',
        scientificName: 'Abyssinian cat',
        age: '14-16',
        distanceToUser: '0.8 km',
        description: 'Burmese cats have a compact body and a short, satin-like coat. They are affectionate, intelligent, and enjoy being around people. Burmese cats are known for their social nature and make excellent companions',
        isFemale: true,
        image: Image.asset(
          AssetsManager.cat20,
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
