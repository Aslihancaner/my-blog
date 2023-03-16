import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_blog/screens/post_detail_screen.dart';

class HomePagePostContainer extends StatelessWidget {
  final AssetImage image;

  const HomePagePostContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Get.to(const PostDetailScreen());
      },
      child: Container(
          height: size.height * 0.5,
          width: size.width * 0.53,
          margin:
              const EdgeInsets.only(right: 10.0, left: 20, top: 13.0, bottom: 13.0),
          //color: Colors.black,
          decoration: BoxDecoration(
              image: DecorationImage(image: image, fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1), spreadRadius: 2),
              ]),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "The 7 worst business software in history ",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 7),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Aslıhan",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
