import 'package:flutter/material.dart';

import '../styles/style.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({super.key, required this.title});
  final String title;
  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _MyAppBarState extends State<MyAppBar> {
  // final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
  var remoteValue;
  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((t) {
    // fetch();
    // });
  }

  @override
  Widget build(BuildContext context) {
    // remoteValue = remoteConfig.getBool('remote_value');
    // print(remoteValue);
    return AppBar(
      elevation: 0,
      backgroundColor: AppStyles.greenColor,
      centerTitle: true,
      title: Text(
        widget.title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
