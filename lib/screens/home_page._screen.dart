import 'package:flutter/material.dart';
import 'package:my_blog/constants/color_constants.dart';
import 'package:my_blog/screens/nav_bar.dart';
import 'package:my_blog/screens/top_bar.dart';
import 'package:my_blog/widgets/home_page_post_container_widget.dart';
import 'package:my_blog/widgets/horizontal_post_container_widget.dart';

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
      appBar: const TopBar(),
      drawer: NavBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 8.0),
            child: Text(
              "Your Daily",
              style: TextStyle(
                  color: ColorConstants.grey,
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 8.0, bottom: 8.0),
            child: Text(
              "Recommendation",
              style: TextStyle(
                  color: ColorConstants.black,
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
                  image: AssetImage("assets/manzara.jpg"),
                ),
                HomePagePostContainer(
                  image: AssetImage("assets/images.jpg"),
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
                      child: TabBar(
                        indicatorColor: ColorConstants.transparent,
                        isScrollable: true,
                        labelColor: ColorConstants.black,
                        unselectedLabelColor: ColorConstants.grey,
                        tabs: const [
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
                        height: size.height * 0.84, //height of TabBarView
                        // decoration: const BoxDecoration(
                        //     border: Border(
                        //         top: BorderSide(
                        //             color: Colors.grey, width: 0.5))),
                        child: TabBarView(children: <Widget>[
                          Column(
                            children: [
                              HorizontalPostContainer(
                                image: const AssetImage("assets/deneme.jpg"),
                                user: "wef",
                                text: 'Why personal finances are killing you',
                              ),
                              HorizontalPostContainer(
                                  image: const AssetImage("assets/foto.jpeg"),
                                  text: "deneme",
                                  user: "Fatih")
                            ],
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
