import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostDetailScreen extends StatefulWidget {
  const PostDetailScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/deneme.jpg"), fit: BoxFit.cover)),
            child: Stack(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                     Get.back();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                        onPressed: () {
                           Get.back();
                        },
                        // child: Icon(Icons.arrow_back_ios_new_rounded,),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors
                                .black, // Icon rengi isteğe bağlı olarak ayarlanabilir
                          ),
                        )),
                  ),
                ),
                Positioned(
                    bottom: 80,
                    left: 0,
                    child: Container(
                      width: size.width * 1,
                      color: Colors.transparent,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: const Text(
                        "Why dinner ideas will make you question everything",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                      ),
                    )),
                Container(
                  alignment: Alignment.bottomLeft,
                  //width: size.width * 1,
                  color: Colors.transparent,
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/person-images/asli_vesikalik.PNG"),
                          radius: 15,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Aslıhan",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              decoration: TextDecoration.none)),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.access_time, color: Colors.white),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "10 min",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minWidth: MediaQuery.of(context).size.width),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Colors.white),
                height: MediaQuery.of(context).size.height * 0.8,
                // color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing //and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
