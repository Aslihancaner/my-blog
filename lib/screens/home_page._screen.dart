import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_blog/screens/nav_bar.dart';
import 'package:my_blog/screens/post_detail_screen.dart';
import 'package:my_blog/screens/top_bar.dart';
import 'package:my_blog/widgets/home_page_post_container_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text("Sayfa 1"),
    Text("Sayfa 2"),
    Text("Sayfa 3"),
    Text("Sayfa 4"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: TopBar(),
      drawer: NavBar(),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 8.0),
            child: Text(
              "Your Daily",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 8.0, bottom: 8.0),
            child: Text(
              "Recommendation",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          Container(
            height: size.height * 0.5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                HomePagePostContainer(image: AssetImage("assets/deneme.jpg")),
                HomePagePostContainer(
                  image: AssetImage("assets/foto.jpeg"),
                ),
              ],
            ),
          ),
          DefaultTabController(
              length: 7, // length of tabs
              initialIndex: 0,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: const TabBar(
                        indicatorColor: Colors.transparent,
                        isScrollable: true,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(text: 'Top'),
                          Tab(text: 'Popular'),
                          Tab(text: 'Trending'),
                          Tab(text: 'Editor Choice'),
                          Tab(text: 'subjects'),
                          Tab(text: 'subjects'),
                          Tab(text: 'subjects'),
                        ],
                      ),
                    ),
                    Container(
                        height: size.height * 0.5, //height of TabBarView
                        decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.grey, width: 0.5))),
                        child: TabBarView(children: <Widget>[
                          Container(
                            child: GestureDetector(
                              onTap: (() {
                                Get.to(const PostDetailScreen());
                              }),
                              child: Column(
                                children: [
                                  Container(
                                    height: size.height * 0.16,
                                    width: size.width * 0.9,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 20.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.4),
                                              spreadRadius: 2,
                                              blurRadius: 10,
                                              blurStyle: BlurStyle.outer,
                                              offset: Offset(0, 3)),
                                        ]),
                                    child: Row(

                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            child: Image.asset(
                                              "assets/deneme.jpg",
                                              height: size.height * 0.14,
                                              width: size.width * 0.3,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                width: size.width * 0.5,
                                                child: Text(
                                                  "Why personal finances are killing you",
                                                  textAlign: TextAlign.center,
                                                  overflow:
                                                      TextOverflow.visible,
                                                ),
                                              ),
                                              Row(
                                                children: const [
                                                  Icon(Icons.person),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "Aslıhan",
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  ),
                                                  SizedBox(
                                                    width: 15,
                                                  ),
                                                  Icon(
                                                    Icons.access_time,
                                                    color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text("5 min",
                                                      style: TextStyle(
                                                          color: Colors.grey))
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: size.height * 0.18,
                                    width: size.width * 0.9,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black,
                                              spreadRadius: 2),
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Text('Display Tab 2',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            child: Text('Display Tab 2',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            child: Text('Display Tab 2',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            child: Text('Display Tab 2',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            child: Text('Display Tab 2',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            child: Text('Display Tab 2',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ]))
                  ])),
          // ]
          //),
        ],
      ),
    );
  }
}
