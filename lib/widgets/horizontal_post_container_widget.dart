import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_blog/screens/post_detail_screen.dart';

import '../constants/color_constants.dart';

class HorizontalPostContainer extends StatelessWidget {
  HorizontalPostContainer({
    Key? key,
    required this.image,
    required this.text,
    required this.user,
  }) : super(key: key);
  final AssetImage image;
  final String text;
  final String user;
  final DateTime? time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Get.to(const PostDetailScreen());
      },
      child: Container(
        height: size.height * 0.16,
        width: size.width * 0.9,
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        decoration: BoxDecoration(
           // color: ColorConstants.white,
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: [
              BoxShadow(
                  color: ColorConstants.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 10,
                  blurStyle: BlurStyle.outer,
                  offset: const Offset(0, 3)),
            ]),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: image, //"assets/deneme.jpg"
                  height: size.height * 0.14,
                  width: size.width * 0.3,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    //eski hali container
                    width: size.width * 0.5,
                    child: Text(
                      text, //"Why personal finances are killing you",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.person),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        user,
                        style: TextStyle(color: ColorConstants.grey),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(
                        Icons.access_time,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${time!.difference(DateTime.now()).inMinutes.abs()} min',
                        style: TextStyle(color: ColorConstants.grey),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
