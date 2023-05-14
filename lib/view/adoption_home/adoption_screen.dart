import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pets_ui/resources/assetManager.dart';
import 'package:pets_ui/view/adoption_home/adoption_provider.dart';
import '../../animal_detail_screen.dart';
import 'dart:math' as math;

class Animal {
  String name;
  String scientificName;
  double age;
  String distanceToUser;
  bool isFemale;
  Image image;
  Color backgroundColor;
  Image get d => image = Image(
        height: 180.0,
        fit: BoxFit.fitHeight,
        width: 20,
        // image: '',
      );

  Animal({
    this.name,
    this.scientificName,
    this.age,
    this.distanceToUser,
    this.isFemale,
    this.image,
    this.backgroundColor,
  });
}

// ignore: must_be_immutable
class AdoptionScreen extends ConsumerStatefulWidget {
  @override
  ConsumerState<AdoptionScreen> createState() => _AdoptionScreenState();
}

class _AdoptionScreenState extends ConsumerState<AdoptionScreen> {
  int selectedAnimalIconIndex = 0;

  final List<Animal> animals = [
    Animal(
      name: 'Sola',
      scientificName: 'Abyssinian cat',
      age: 2.0,
      distanceToUser: '3.6 km',
      isFemale: true,
      image: Image.asset(AssetsManager.cat1),
      backgroundColor: Color.fromRGBO(203, 213, 216, 1.0),
    ),
    Animal(
      name: 'Orion',
      scientificName: 'Abyssinian cat',
      age: 1.5,
      distanceToUser: '7.8 km',
      isFemale: false,
      image: Image.asset(AssetsManager.cat2),
      backgroundColor: Color.fromRGBO(237, 214, 180, 1.0),
    ),
    Animal(
      name: 'Birman',
      scientificName: 'Abyssinian cat',
      age: 15,
      distanceToUser: '7.8 km',
      isFemale: false,
      image: Image.asset(
        AssetsManager.cat3,
        height: 25,
      ),
      backgroundColor: Color.fromRGBO(194, 180, 237, 1),
    ),
    Animal(
      name: 'Angora',
      scientificName: 'Abyssinian cat',
      age: 18,
      distanceToUser: '7.8 km',
      isFemale: true,
      image: Image.asset(
        AssetsManager.cat4,
        height: 25,
      ),
      backgroundColor: Color.fromRGBO(174, 215, 206, 1),
    ),
  ];

  List<String> animalTypes = [
    'Cats',
    'Dogs',
    'Parrots',
    'Fish',
    'Fish',
  ];

  List<IconData> animalIcons = [
    FontAwesomeIcons.cat,
    FontAwesomeIcons.dog,
    FontAwesomeIcons.crow,
    FontAwesomeIcons.fish,
    FontAwesomeIcons.fish,
  ];

  Widget buildAnimalIcon(int index, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 30.0),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              setState(() {
                selectedAnimalIconIndex = index;
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
    );
  }

  @override
  Widget build(BuildContext context) {
    final prov = ref.read(adoptionProvider);
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      key: prov.scaffoldKey,
      drawer: ClipRRect(
        // borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50)),
        child: BackdropFilter(
          // blendMode: BlendMode.clear,
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Drawer(
            backgroundColor: Colors.transparent,
            elevation: 0,
            width: w / 1.4,
            child: Container(
              color: const Color(0xff598C93).withOpacity(0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: h * 0.065,
                  ),
                  GestureDetector(
                    onTap: () {
                      prov.scaffoldKey.currentState.closeDrawer();
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(math.pi),
                        child: Icon(
                          FontAwesomeIcons.bars,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.03,
                  ),

                  // // image
                  // Container(
                  //   alignment: FractionalOffset.center,
                  //   child: userData?.image == ''
                  //       ? imageFile == null
                  //           ? CachedNetworkImage(
                  //               width: w * 0.4, // 5,
                  //               height: h * 0.17, // 5,
                  //               fit: BoxFit.contain,
                  //               imageUrl: autolyLogoUrl,
                  //               progressIndicatorBuilder:
                  //                   (context, url, downloadProgress) =>
                  //                       CircularProgressIndicator(
                  //                           value: downloadProgress.progress),
                  //               errorWidget: (context, url, error) =>
                  //                   const Icon(Icons.error))
                  //           : ClipOval(
                  //               child: Image.file(
                  //                 imageFile,
                  //                 width: w * 0.30, // 5,
                  //                 height: h * 0.15, // 5,
                  //                 fit: BoxFit.cover,
                  //               ),
                  //             )
                  //       : ClipOval(
                  //           child: CachedNetworkImage(
                  //             width: w * 0.30, // 5,
                  //             height: h * 0.15, // 5,
                  //             fit: BoxFit.cover,
                  //             imageUrl: userData!.image,
                  //             progressIndicatorBuilder:
                  //                 (context, url, downloadProgress) =>
                  //                     CircularProgressIndicator(
                  //                         value: downloadProgress.progress),
                  //             errorWidget: (context, url, error) =>
                  //                 const Icon(Icons.error),
                  //           ),
                  //         ),
                  // ),

                  // SizedBox(
                  //   height: h * 0.02,
                  // ),
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: Text(
                  //     userData!.username.toCapitalized(),
                  //     style: getMediumStyle(
                  //       color: white,
                  //       fontSize: FontSize.s18,
                  //     ),
                  //   ),
                  // ),

                  // userData.userType == 'parent'
                  //     ? _buildSideMenuSectionRow(
                  //         context,
                  //         icon: ImageAssets.kidsIcon,
                  //         title: LocalKeys.kStudentsList,
                  //         onTap: () {
                  //           navigateTo(context, AllKidsView());
                  //         },
                  //       )
                  //     : Container(),
                  // userData.userType == 'parent'
                  //     ? _buildSideMenuSectionRow(
                  //         context,
                  //         icon: ImageAssets.familyIcon,
                  //         title: LocalKeys.kAuthorizedPersons,
                  //         onTap: () {
                  //           navigateTo(
                  //               context, const AuthorizedPersonsListView());
                  //         },
                  //       )
                  //     : Container(),

                  // userData.userType == 'parent'
                  //     ? _buildSideMenuSectionRow(
                  //         context,
                  //         icon: ImageAssets.paymentIcon,
                  //         title: LocalKeys.kPaymentMethod,
                  //         onTap: () {
                  //           navigateTo(context, const PaymentView());
                  //         },
                  //       )
                  //     : Container(),
                  // _buildSideMenuSectionRow(
                  //   context,
                  //   icon: ImageAssets.lockIcon,
                  //   title: LocalKeys.kChangePassword,
                  //   onTap: () {
                  //     navigateTo(context, const ChangePasswordView());
                  //   },
                  // ),
                  // _buildSideMenuSectionRow(
                  //   context,
                  //   icon: ImageAssets.langIcon,
                  //   title: LocalKeys.kChooseLanguage,
                  //   onTap: () {
                  //     navigateTo(
                  //         context,
                  //         ChooseLanguageView(
                  //           isSideMenu: true,
                  //           isHomeScreen: false,
                  //         ));
                  //   },
                  // ),
                  // _buildSideMenuSectionRow(
                  //   context,
                  //   iconColor: dustyOrange,
                  //   imageColor: dustyOrange,
                  //   textColor: dustyOrange,
                  //   icon: ImageAssets.logoutIcon,
                  //   title: LocalKeys.kLogout,
                  //   onTap: () {
                  //     showDialog(
                  //       context: context,
                  //       builder: (context) => CupertinoAlertDialog(
                  //         title: Text(
                  //           '${LocalKeys.kDoYouWant.tr()} \n ${LocalKeys.kLogout.tr()} !',
                  //           style: getBoldStyle(
                  //             color: blueGreen,
                  //             fontSize: 20,
                  //           ),
                  //         ),
                  //         actions: [
                  //           Padding(
                  //             padding: const EdgeInsets.all(10.0),
                  //             child: defaultButton(
                  //               function: () {
                  //                 ProfileLogoutApi().userLogout(context, ref);
                  //               },
                  //               text: LocalKeys.kYes.tr(),
                  //               background: dustyOrange,
                  //               radius: 17,
                  //             ),
                  //           ),
                  //           Padding(
                  //             padding: const EdgeInsets.all(10.0),
                  //             child: defaultButton(
                  //               function: () {
                  //                 Navigator.of(context).pop(false);
                  //               },
                  //               text: LocalKeys.kNO.tr(),
                  //               radius: 17,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     );
                  //   },
                  // ),
                  // _buildSideMenuSectionRow(
                  //   context,
                  //   icon: ImageAssets.logoutIcon,
                  //   title: LocalKeys.kDeleteAccount,
                  //   onTap: () {},
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 60.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      prov.scaffoldKey.currentState.closeDrawer();
                      // widget.menuCallback();
                    },
                    child: Icon(
                      FontAwesomeIcons.bars,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Location',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0,
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.4),
                        ),
                      ),
                      Row(
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
                    ],
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
                          onTap: () {},
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
                        child: ListView.builder(
                            padding: EdgeInsets.only(
                              left: 24.0,
                              top: 8.0,
                            ),
                            scrollDirection: Axis.horizontal,
                            itemCount: animalTypes.length,
                            itemBuilder: (context, index) {
                              return buildAnimalIcon(index, context);
                            }),
                      ),
                      Expanded(
                        child: ListView.builder(
                            padding: EdgeInsets.only(
                              top: 10.0,
                            ),
                            itemCount: animals.length,
                            itemBuilder: (context, index) {
                              final animal = animals[index];

                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
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
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        elevation: 4.0,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20.0,
                                            vertical: 20.0,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              SizedBox(
                                                width: w * 0.4,
                                              ),
                                              Flexible(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: <Widget>[
                                                        Text(
                                                          animal.name,
                                                          style: TextStyle(
                                                            fontSize: 26.0,
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Icon(
                                                          animal.isFemale
                                                              ? FontAwesomeIcons
                                                                  .venus
                                                              : FontAwesomeIcons
                                                                  .mars,
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
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10.0,
                                                    ),
                                                    Text(
                                                      '${animal.age} years old',
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10.0,
                                                    ),
                                                    Row(
                                                      children: <Widget>[
                                                        Icon(
                                                          FontAwesomeIcons
                                                              .mapMarkerAlt,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                          size: 16.0,
                                                        ),
                                                        SizedBox(
                                                          width: 6.0,
                                                        ),
                                                        Text(
                                                          'Distance: ${animal.distanceToUser}',
                                                          style: TextStyle(
                                                            fontSize: 16.0,
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                            fontWeight:
                                                                FontWeight.w400,
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
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
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
                      )
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
