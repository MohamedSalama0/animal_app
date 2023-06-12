import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../animal_detail_screen.dart';
import '../../resources/assetManager.dart';
import '../adoption_home/adoption_screen.dart';

class Birds extends StatelessWidget {
  Birds({ key}) : super(key: key);

  List<Animal> animals(double w) {
    return [

      Animal(
        name: 'Parrots',
        scientificName: 'Amazona',
        age: '20-60',
        distanceToUser: '1.1 km',
        isFemale: true,
        description: 'The Amazon parrots originated around the areas of South America, Mexico, and the Caribbean. They are noted for their ability to imitate the human speech and various other sounds, making them good pets and companions. They are mainly green but with accenting colours that can sometimes be vivid. Amazon parrots can be territorial and often show their emotions through their feathers.',
        image: Image.asset(
          AssetsManager.bird1,
          width: w * 0.4,
          // scale: 3.2,
        ),
        backgroundColor: Color.fromRGBO(203, 213, 216, 1.0),
      ),

      Animal(
        name: 'Macaw',
        scientificName: 'Psittacidae',
        age: '20-50',
        isFemale: false,
        description: 'Macaws are a group of New World parrots that are long-tailed and often colorful. They are popular in aviculture or as companion parrots, although there are conservation concerns about several species in the wild.',
        distanceToUser: '7.8 km',
        image: Image.asset(
          AssetsManager.bird2,
          // scale: 3.5,
          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(207, 207, 207, 0.78),
      ),

      Animal(
        name: 'Parrot',
        scientificName: 'Psittaciformes',
        age: '15-50',
        distanceToUser: '5.2 km',
        isFemale: false,
        description: 'Parrots, also known as psittacines, are birds of the roughly 398 species in 92 genera comprising the order Psittaciformes, found mostly in tropical and subtropical regions. The order is subdivided into three superfamilies: the Psittacoidea, the Cacatuoidea, and the Strigopoidea.',
        image: Image.asset(
          AssetsManager.bird3,
          // scale: 3.2,
          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(44, 140, 172, 0.864),
      ),

      Animal(
        name: 'Budgerigar',
        scientificName: 'Melopsittacus undulatus',
        age: '8',
        distanceToUser: '3.5 km',
        isFemale: true,
        description: 'The budgerigar, also known as the common parakeet, shell parakeet or budgie, is a small, long-tailed, seed-eating parrot. Budgies are the only species in the genus Melopsittacus. Naturally, the species is green and yellow with black, scalloped markings on the nape, back, and wings.',
        image: Image.asset(
          AssetsManager.bird4,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'African Grey Parrot',
        scientificName: 'Melopsittacus undulatus',
        age: '50-70',
        distanceToUser: '3.5 km',
        isFemale: true,
        description: 'African Grey Parrots are highly intelligent and trainable birds. They are known for their exceptional ability to mimic and speak human language. They make excellent companions but require dedicated care and attention.',
        image: Image.asset(
          AssetsManager.bird5,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Amazon Parrot',
        scientificName: 'Melopsittacus undulatus',
        age: '40-60',
        distanceToUser: '3.5 km',
        isFemale: true,
        description: 'Amazon Parrots are social and intelligent birds. They have vibrant plumage and are known for their playful and outgoing nature. They can be excellent talkers and require mental stimulation and social interaction.',
        image: Image.asset(
          AssetsManager.bird6,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Canaries',
        scientificName: 'Melopsittacus undulatus',
        age: '10-15',
        distanceToUser: '3.5 km',
        isFemale: true,
        description: 'Canaries are small, melodious songbirds known for their beautiful singing abilities. They come in a variety of colors and are relatively low-maintenance pets. They require a balanced diet and regular exercise to stay healthy.',
        image: Image.asset(
          AssetsManager.bird7,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Cockatiels',
        scientificName: 'Melopsittacus undulatus',
        age: '15-20',
        distanceToUser: '3.5 km',
        isFemale: true,
        description: 'Cockatiels are small, affectionate parrots native to Australia. They are known for their distinctive crest and playful nature. They are popular as pets due to their ability to mimic sounds and learn simple tricks. Cockatiels require a balanced diet, regular exercise, and social interaction to stay happy and healthy.',
        image: Image.asset(
          AssetsManager.bird8,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Cockatoos',
        scientificName: 'Melopsittacus undulatus',
        age: '40-60',
        distanceToUser: '3.5 km',
        isFemale: true,
        description: 'Cockatoos are highly social and affectionate birds known for their crest and their ability to mimic sounds. They require a lot of attention and mental stimulation to prevent boredom and potential behavioral issues.',
        image: Image.asset(
          AssetsManager.bird9,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Conures',
        scientificName: 'Melopsittacus undulatus',
        age: '15-30',
        distanceToUser: '3.5 km',
        isFemale: true,
        description: ' Conures are small to medium-sized parrots with vibrant plumage and playful personalities. They are known for their high energy levels and can be excellent companions with proper socialization and training.',
        image: Image.asset(
          AssetsManager.bird10,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Eclectus Parrot',
        scientificName: 'Melopsittacus undulatus',
        age: '30-50',
        distanceToUser: '3.5 km',
        isFemale: true,
        description: 'Eclectus Parrots are sexually dimorphic, meaning males and females have distinct plumage. They are intelligent and curious birds with a gentle temperament. They require a diverse diet rich in fruits and vegetables.',
        image: Image.asset(
          AssetsManager.bird11,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Finches',
        scientificName: 'Melopsittacus undulatus',
        age: '5-10',
        distanceToUser: '3.5 km',
        isFemale: true,
        description: 'Finches are small, social birds known for their beautiful songs and their ability to live in groups. They come in various species and colors, and they require a balanced diet and spacious cage for a healthy lifestyle.',
        image: Image.asset(
          AssetsManager.bird12,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Indian Ringneck',
        scientificName: 'Melopsittacus undulatus',
        age: '20-30',
        distanceToUser: '3.5 km',
        isFemale: true,
        description: 'Indian Ringnecks are medium-sized parakeets with long tails. They are intelligent, good talkers, and can be quite independent. They need regular mental stimulation and social interaction to prevent boredom.',
        image: Image.asset(
          AssetsManager.bird13,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Lovebird',
        scientificName: 'Melopsittacus undulatus',
        age: '10-15',
        distanceToUser: '3.5 km',
        isFemale: true,
        description: 'Lovebirds are small, social parrots known for their affectionate behavior towards their mates. They come in a variety of colors and require a lot of mental and physical stimulation to thrive.',
        image: Image.asset(
          AssetsManager.bird14,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Pigeon',
        scientificName: 'Melopsittacus undulatus',
        age: '5-15',
        distanceToUser: '3.5 km',
        isFemale: true,
        description: 'Pigeons are highly adaptable birds found in various parts of the world. They are known for their homing abilities and have been domesticated for thousands of years. They require a clean and spacious living environment.',
        image: Image.asset(
          AssetsManager.bird15,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Poicephalus parrot',
        scientificName: 'Melopsittacus undulatus',
        age: '20-40',
        distanceToUser: '3.5 km',
        isFemale: true,
        description: 'Poicephalus parrots, such as the Senegal Parrot, are small to medium-sized birds known for their playful and curious nature. They require regular mental stimulation, social interaction, and a balanced diet to stay healthy.',
        image: Image.asset(
          AssetsManager.bird16,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Quaker Parrot',
        scientificName: 'Melopsittacus undulatus',
        age: '20-30',
        distanceToUser: '3.5 km',
        isFemale: true,
        description: 'Quaker Parrots, also known as Monk Parakeets, are medium-sized parrots with green feathers. They are intelligent, social birds with excellent talking abilities. They require mental stimulation and social interaction to thrive.',
        image: Image.asset(
          AssetsManager.bird17,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Senegal Parrot',
        scientificName: 'Melopsittacus undulatus',
        age: '20-30',
        distanceToUser: '3.5 km',
        isFemale: true,
        description: 'Senegal Parrots are medium-sized parrots with a vibrant plumage. They are known for their playful and curious nature. They require mental stimulation, social interaction, and a balanced diet for their overall well-being.',
        image: Image.asset(
          AssetsManager.bird18,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Toucan',
        scientificName: 'Melopsittacus undulatus',
        age: '15-20',
        distanceToUser: '3.5 km',
        isFemale: true,
        description: 'Toucans are colorful and unique-looking birds known for their large, vibrant bills. They primarily feed on fruits and have a gentle temperament. They require a spacious enclosure and a varied diet to thrive.',
        image: Image.asset(
          AssetsManager.bird19,
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
