import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
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
      backgroundColor: Colors.white,
      shadowColor: Colors.transparent,
      // title: const Text(
      //   "MyBlog",
      //   style: TextStyle(color: Colors.black),
      //   textAlign: TextAlign.center,
      // ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
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
