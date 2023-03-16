import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:my_blog/screens/login_screen.dart';
import 'package:my_blog/screens/profile_page_screen.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
     
      child: ListView(
        children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 50.0, top: 50.0,left: 15.0,right: 1.0),
          child: Row(
          //  mainAxisAlignment: MainAxisAlignment.start,
         //   crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage:AssetImage("assets/person-images/asli_vesikalik.PNG"),
                radius: 50,
              ),
              const SizedBox(width:10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Aslı",style: TextStyle(color: Colors.black, fontSize: 20),textAlign: TextAlign.left,),
                  Text("aslihancan@gmail.com",style: TextStyle(color: Colors.grey, fontSize: 15))

                ],
              )
            ],
          ),
        )
        ,
          // const UserAccountsDrawerHeader(
            
          //   accountName: Text("Aslıhan CANER",style: TextStyle(color: Colors.black),),
          //   accountEmail: Text("asli@gmail.com",style: TextStyle(color: Colors.black),),
          //   currentAccountPicture: CircleAvatar(
          //     backgroundColor: Colors.white,
                 
          //     backgroundImage: AssetImage("assets/person-images/asli_vesikalik.PNG"),
              
          //   ),
          //   currentAccountPictureSize: Size.square(70),
          //   decoration: BoxDecoration(
          //     color: Colors.white10,
          //   ),
          // ),
          ListTile(
            leading: Icon(Icons.person_pin_outlined),
            title: Text("Profile"),
            onTap: () => Get.to(ProfilePage()),
          ),
          ListTile(
            leading: Icon(Icons.dark_mode),
            title: Text("Dark Mode"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications_active),
            title: Text("Notifications"),
            onTap: () => null,
          ),
          const Divider(),
          ListTile(
              leading: Icon(Icons.logout),
              title: Text("Sign Out"),
               onTap: () => Get.to(LoginScreen())),
      
               // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => LoginScreen())))
        ],
      ),
    );
  }
}
