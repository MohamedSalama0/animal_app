import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pets_ui/resources/assetManager.dart';
import 'package:pets_ui/view/adoption_home/adoption_provider.dart';
import 'package:pets_ui/view/chat_screen/chat_screen.dart';
import 'package:pets_ui/view/component/birds.dart';
import 'dart:math' as math;

import '../component/cats.dart';
import '../component/dogs.dart';

class Animal {
  String name;
  String scientificName;
  String age;
  String distanceToUser;
  String description;
  bool isFemale;
  Image image;
  Color backgroundColor;

  Animal({
    required this.name,
    required this.scientificName,
    required this.age,
    required this.distanceToUser,
    required this.description,
    required this.isFemale,
    required this.image,
    required this.backgroundColor,
  });
}

// ignore: must_be_immutable
class AdoptionScreen extends ConsumerStatefulWidget {
  @override
  ConsumerState<AdoptionScreen> createState() => _AdoptionScreenState();
}

class _AdoptionScreenState extends ConsumerState<AdoptionScreen>
    with SingleTickerProviderStateMixin {
  int selectedAnimalIconIndex = 0;

// // var f = MediaQuery.of(context).size.width;
//   List<Animal> animals(double w) {
//     return [
//       Animal(
//         name: 'Sola',
//         scientificName: 'Abyssinian cat',
//         age: 2.0,
//         distanceToUser: '3.6 km',
//         isFemale: true,
//         description: '',
//         image: Image.asset(
//           AssetsManager.cat1,
//           width: w * 0.4,
//           // scale: 3.2,
//         ),
//         backgroundColor: Color.fromRGBO(203, 213, 216, 1.0),
//       ),
//       Animal(
//         name: 'Orion',
//         scientificName: 'Abyssinian cat',
//         age: '1.5',
//         isFemale: false,
//         distanceToUser: '7.8 km',
//         image: Image.asset(
//           AssetsManager.cat2,
//           // scale: 3.5,
//           width: w * 0.4,
//         ),
//         backgroundColor: Color.fromRGBO(237, 214, 180, 1.0),
//       ),
//       Animal(
//         name: 'Birman',
//         scientificName: 'Abyssinian cat',
//         age: '15',
//         distanceToUser: '7.8 km',
//         isFemale: false,
//         image: Image.asset(
//           AssetsManager.cat3,
//           // scale: 3.2,
//           width: w * 0.4,
//         ),
//         backgroundColor: Color.fromRGBO(194, 180, 237, 1),
//       ),
//       Animal(
//         name: 'Angora',
//         scientificName: 'Abyssinian cat',
//         age: '18',
//         distanceToUser: '7.8 km',
//         isFemale: true,
//         image: Image.asset(
//           AssetsManager.cat4,
//           // scale: 3.2,

//           width: w * 0.4,
//         ),
//         backgroundColor: Color.fromRGBO(174, 215, 206, 1),
//       ),
//     ];
//   }

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

  var screens = [
    Cats(),
    Dogs(),
    Birds(),
  ];

  Tab buildAnimalIcon(int index, BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Tab(
      height: 110,
      child: Padding(
        padding: EdgeInsets.only(
          right: 30.0,
        ),
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  selectedAnimalIconIndex = index;
                  tabController.animateTo(index);
                });
              },
              child: Material(
                color: selectedAnimalIconIndex == index
                    ? Theme.of(context).primaryColor
                    : Colors.white,
                elevation: 8.0,
                borderRadius: BorderRadius.circular(20.0),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(
                    animalIcons[index],
                    size: 30.0,
                    color: selectedAnimalIconIndex == index
                        ? Colors.white
                        : Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              animalTypes[index],
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final prov = ref.read(adoptionProvider);
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      key: prov.scaffoldKey,

      // drawer: ClipRRect(
      //   // borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50)),
      //   child: BackdropFilter(
      //     filter: ImageFilter.blur(
      //       sigmaX: 20,
      //       sigmaY: 20,
      //     ),
      //     child: Drawer(
      //       backgroundColor: Colors.transparent,
      //       elevation: 0,
      //       width: w / 1.4,
      //       child: Container(
      //         color: const Color(0xff598C93).withOpacity(0.1),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             SizedBox(
      //               height: h * 0.065,
      //             ),
      //             GestureDetector(
      //               onTap: () {
      //                 // prov.scaffoldKey.currentState?.closeDrawer();
      //               },
      //               child: Container(
      //                 margin: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
      //                 child: Transform(
      //                   alignment: Alignment.center,
      //                   transform: Matrix4.rotationY(math.pi),
      //                   child: Icon(
      //                     FontAwesomeIcons.bars,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //             SizedBox(
      //               height: h * 0.03,
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),

      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(top: 60.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // InkWell(
                    //   onTap: () {
                    //     prov.scaffoldKey.currentState?.openDrawer();
                    //     // widget.menuCallback();
                    //   },
                    //   child: Icon(
                    //     FontAwesomeIcons.bars,
                    //   ),
                    // ),

                    Container(
                      // width: w / 1.3,
                      margin: EdgeInsets.only(left: w * 0.18),
                      // alignment: FractionalOffset.center,
                      // color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Location',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18.0,
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.4),
                            ),
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  FontAwesomeIcons.mapMarkerAlt,
                                  color: Theme.of(context).primaryColor,
                                ),
                                Text(
                                  'Egypt, ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22.0,
                                  ),
                                ),
                                Text(
                                  'New cairo',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 22.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage(AssetsManager.cat1),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 24.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Theme.of(context).primaryColor.withOpacity(0.06),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24.0,
                            vertical: 20.0,
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ChatScreen(),
                              ));
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(20.0)),
                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.robot,
                                    color: Colors.white,

                                    /// kjsadhkjaslkkljkaslkdjlwlkaksdjf
                                  ),
                                  SizedBox(
                                    width: w * .060,
                                  ),
                                  Text(
                                    'Ask me..',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                      // Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  // Icon(
                                  //   FontAwesomeIcons.filter,
                                  //   color: Colors.grey,
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 120.0,
                          child: TabBar(
                            indicatorColor: Colors.transparent,
                            controller: tabController,
                            tabs: [
                              // Tab(text: 'sad'),
                              // Tab(text: 'sad1'),
                              // Tab(child: Text('sadd')),
                              buildAnimalIcon(0, context),
                              buildAnimalIcon(1, context),
                              buildAnimalIcon(2, context),
                            ],
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: tabController,
                            children: screens,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
