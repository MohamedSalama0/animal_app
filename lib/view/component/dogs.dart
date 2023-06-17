import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../animal_detail_screen.dart';
import '../../resources/assetManager.dart';
import '../adoption_home/adoption_screen.dart';

class Dogs extends StatelessWidget {
  Dogs({key}) : super(key: key);

  List<Animal> animals(double w) {
    return [
      /// i will insert the dogs
      Animal(
        name: 'Golden',
        scientificName: 'Dog breed',
        age: '10-12',
        distanceToUser: '1.1 km',
        isFemale: true,
        description:
            'The Golden Retriever is a Scottish breed of retriever dog of medium size. It is characterised by a gentle and affectionate nature and a striking golden coat. It is commonly kept as a pet and is among the most frequently registered breeds in several Western countries.',
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
        age: '12-15',
        isFemale: false,
        distanceToUser: '7.8 km',
        description:
            'The Siberian Husky is a medium-sized working sled dog breed. The breed belongs to the Spitz genetic family. It is recognizable by its thickly furred double coat, erect triangular ears, and distinctive markings, and is smaller than the similar-looking Alaskan Malamute. ',
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
        age: '13-15',
        distanceToUser: '5.2 km',
        isFemale: false,
        description:
            'The American Eskimo Dog is a breed of companion dog, originating in Germany. The American Eskimo Dog is a member of the Spitz family. It is considered an ancient dog breed due to its recent admixture with wolves. ',
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
        age: '10-13',
        distanceToUser: '3.5 km',
        description:
            'The Maltipoo is a winning combination of a Maltese and poodle. Gentle, playful, and highly intelligent, this hybrid inherits every positive quality from each parent breed, making them a smart, active and affectionate crossbreed. Maltipoos are patient, kind companions for everyone young and old.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog4,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Labrador',
        scientificName: 'Abyssinian cat',
        age: '10-12',
        distanceToUser: '2 km',
        description:
            'Labrador Retrievers are friendly, outgoing, and highly trainable dogs. They are often used as service dogs, therapy dogs, and search and rescue dogs due to their intelligence and versatility. Labradors have a gentle nature and are great with children, making them popular family pets.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog5,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'German',
        scientificName: 'Abyssinian cat',
        age: '9-13',
        distanceToUser: '2 km',
        description:
            ' German Shepherds are known for their loyalty, courage, and versatility. They are often employed as police and military dogs, as well as search and rescue dogs. German Shepherds require consistent training, socialization, and mental stimulation to thrive.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog6,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Bulldog',
        scientificName: 'Abyssinian cat',
        age: '8-10',
        distanceToUser: '3 km',
        description:
            'Bulldogs have a calm and friendly temperament. They are medium-sized dogs with a sturdy build and a distinctive wrinkled face. Bulldogs may require some extra care due to their specific health needs, including breathing difficulties. They are loyal companions and make great family pets.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog7,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Beagle',
        scientificName: 'Abyssinian cat',
        age: '12-15',
        distanceToUser: '3 km',
        description:
            'Beagles are small to medium-sized hounds known for their keen sense of smell. They are friendly, merry, and sociable dogs. Beagles require regular exercise to keep them physically and mentally stimulated.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog8,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Poodles',
        scientificName: 'Abyssinian cat',
        age: '14-18',
        distanceToUser: '3 km',
        description:
            'Poodles are highly intelligent and versatile dogs. They are known for their curly, hypoallergenic coat, which requires regular grooming. Poodles excel in various dog sports, including obedience, agility, and hunting trials. They are also often used as therapy dogs.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog9,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Rottweiler',
        scientificName: 'Abyssinian cat',
        age: '8-10',
        distanceToUser: '2 km',
        description:
            'Rottweilers are strong and powerful dogs with a natural guarding instinct. They are loyal, confident, and protective of their families. Rottweilers require consistent training, socialization, and exercise to thrive.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog10,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Yorkshire',
        scientificName: 'Abyssinian cat',
        age: '13-16',
        distanceToUser: '2 km',
        description:
            'Yorkshire Terriers, or Yorkies, are small and energetic dogs with a confident and bold personality. They have a long, silky coat that requires regular grooming. Despite their small size, Yorkies are spirited and make great companions.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog11,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Boxers',
        scientificName: 'Abyssinian cat',
        age: '10-12',
        distanceToUser: '2 km',
        description:
            'Boxers are medium-sized, muscular dogs known for their playful and energetic nature. They are intelligent, loyal, and require regular exercise and mental stimulation. Boxers are often used as working dogs, family pets, and are popular in various dog sports.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog12,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Dachshund',
        scientificName: 'Abyssinian cat',
        age: '12-16',
        distanceToUser: '1 km',
        description:
            'Dachshunds, also known as "wiener dogs," have a long body and short legs. They are curious, lively, and make loving companions. Dachshunds come in different coat varieties, including smooth, wirehaired, and longhaired.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog13,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Danes',
        scientificName: 'Abyssinian cat',
        age: '7-10',
        distanceToUser: '1 km',
        description:
            ' Great Danes are one of the largest dog breeds, known for their size and gentle nature. Despite their imposing appearance, they are typically friendly, patient, and good with children. Great Danes require proper training, socialization, and regular exercise.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog14,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Chihuahua',
        scientificName: 'Abyssinian cat',
        age: '12-20',
        distanceToUser: '1 km',
        description:
            ' Chihuahuas are tiny dogs with big personalities. They are alert, loyal, and can be reserved around strangers. Chihuahuas come in different coat varieties and are known for their lively and spirited nature.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog15,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Shih Tzus',
        scientificName: 'Abyssinian cat',
        age: '10-16',
        distanceToUser: '1 km',
        description:
            ' Shih Tzus are small, affectionate dogs with a distinct long, flowing coat. They are known for their friendly and outgoing nature. Shih Tzus are often bred for companionship and make great lap dogs.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog16,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Fr.Bulldogs',
        scientificName: 'Abyssinian cat',
        age: '12-20',
        distanceToUser: '1 km',
        description:
            ' French Bulldogs are small, muscular dogs with a playful and affectionate temperament. They are popular companion pets known for their friendly nature and adaptability to various living situations. French Bulldogs require moderate exercise and are generally low-maintenance in terms of grooming.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog17,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Terriers',
        scientificName: 'Abyssinian cat',
        age: '11-15',
        distanceToUser: '1 km',
        description:
            'Boston Terriers are compact, friendly dogs known as "the American Gentleman." They have a gentle disposition and are great family pets. Boston Terriers are intelligent and adaptable, making them suitable for different lifestyles.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog18,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Collies',
        scientificName: 'Abyssinian cat',
        age: '10-14',
        distanceToUser: '1 km',
        description:
            'Border Collies are highly intelligent and energetic dogs, often considered one of the most intelligent dog breeds. They excel in herding and various dog sports, including obedience, agility, and flyball. Border Collies require mental stimulation and a job to keep them happy.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog19,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      Animal(
        name: 'Australian',
        scientificName: 'Abyssinian cat',
        age: '12-15',
        distanceToUser: '1 km',
        description:
            'Australian Shepherds are intelligent and versatile dogs with a strong herding instinct. They are known for their agility, obedience, and trainability. Australian Shepherds are active dogs that require mental and physical stimulation.',
        isFemale: true,
        image: Image.asset(
          AssetsManager.dog20,
          // scale: 3.2,

          width: w * 0.4,
        ),
        backgroundColor: Color.fromRGBO(189, 215, 174, 1),
      ),

      /// and noe i have finished all the 20 dogs
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
