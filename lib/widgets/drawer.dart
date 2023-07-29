import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://media.licdn.com/dms/image/C5603AQFBYSkCTpbROA/profile-displayphoto-shrink_800_800/0/1643372035779?e=2147483647&v=beta&t=mQf03acUEzKD8X_j3LFcz9vEBbdwPU1uVUK8lj4qhOw";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  accountName: Text("Sameer Mansoori"),
                  accountEmail: Text("sameer55@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            ListTile(leading:
            Icon(CupertinoIcons.home,
              color: Colors.white,

            ),
              title: Text(
                  "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                 color: Colors.white,
              ),)
              ,
            ),
            ListTile(leading:
            Icon(CupertinoIcons.profile_circled,
              color: Colors.white,

            ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),)
              ,
            ),
            ListTile(leading:
            Icon(CupertinoIcons.mail,
              color: Colors.white,

            ),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),)
              ,
            ),
          ],
        ),
      ),
    );
  }
}
