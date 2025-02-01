import 'package:flutter/material.dart';
import 'package:iddo_ai/constant.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Drawer(
      backgroundColor: gradient1,
      width: screenWidth / 1.5,
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: gradient1,
            ),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person),
            ),
            accountName: Text(
              "N'TCHA TAHOTA Iddo",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            accountEmail: Text(
              "iddotahotantcha@gmail.com",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              InkWell(
                onTap: () {
                  //
                },
                child: ListTile(
                  title: Text(
                    "iddotahotantcha@gmail.com",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.0,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz_rounded,
                      color: Colors.white,
                      size: 15.0,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  //
                },
                child: ListTile(
                  title: Text(
                    "iddotahotantcha@gmail.com",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.0,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz_rounded,
                      color: Colors.white,
                      size: 15.0,
                    ),
                  ),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
