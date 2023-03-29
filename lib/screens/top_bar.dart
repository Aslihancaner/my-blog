import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isSearchButton;
  const TopBar({Key? key, this.isSearchButton = true}) : super(key: key);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        );
      }),
      backgroundColor: ColorConstants.white,
      shadowColor: ColorConstants.transparent,
      // title: const Text(
      //   "MyBlog",
      //   style: TextStyle(color: Colors.black),
      //   textAlign: TextAlign.center,
      // ),
      actions: [
        Visibility(
          visible: isSearchButton,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: ColorConstants.black,
                )),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage:
                AssetImage("assets/person-images/asli_vesikalik.PNG"),
            radius: 20,
          ),
        ),
      ],
    );
  }
}
