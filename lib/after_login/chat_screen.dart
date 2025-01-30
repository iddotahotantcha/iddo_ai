import 'package:flutter/material.dart';
import 'package:iddo_ai/constant.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: gradient1,
        title: Text(
          "Iddo AI",
          style: TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
              right: 25.0,
            ),
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.message_outlined,
                size: 25.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: gradient1,
        width: screenWidth / 2,
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
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz_rounded,
                        color: Colors.white,
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
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            )),
          ],
        ),
      ),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          gradient1,
          gradient2,
          gradient3,
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          left: 20.0
        ),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            hintText: "Dites quelques choses",
            hintStyle: TextStyle(
              color: Colors.white
            ),
            suffixIcon: IconButton(
              icon: Icon(
                Icons.send,
                color: Colors.white,
              ),
              onPressed: () {
                //
              },
            ),
          ),
        ),
      ),
    );
  }
}
