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
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [gradient1, gradient2, gradient3],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  margin: EdgeInsets.only(bottom: 10.0),
                  constraints: BoxConstraints(
                    maxWidth: screenWidth * 0.7,
                  ),
                  decoration: BoxDecoration(
                    color: gradient3,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                  ),
                  child: Text(
                    "Salut ! Comment ça va ?Salut ! Je vais bien et toi ?Salut ! Je vais bien et toi ?Salut ! Je vais bien et toi ?",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  margin: EdgeInsets.only(bottom: 10.0),
                  constraints: BoxConstraints(
                    maxWidth: screenWidth * 0.7,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(0.0),
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                  ),
                  child: Text(
                    "Salut ! Je vais bien et toi ?Salut ! Je vais bien et toi ?Salut ! Je vais bien et toi ?Salut ! Je vais bien et toi ?Salut ! Je vais bien et toi ?Salut ! Je vais bien et toi ?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            color: Colors.white, // Fond blanc pour un meilleur contraste
            borderRadius: BorderRadius.circular(25.0), // Bordures arrondies
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 3), // Ombre en bas
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none, // Supprime la bordure par défaut
                    hintText: "Dites quelque chose...",
                    hintStyle: TextStyle(color: Colors.grey[500]),
                  ),
                ),
              ),
              SizedBox(width: 5),
              GestureDetector(
                onTap: () {
                  // Action lors de l'envoi du message
                },
                child: CircleAvatar(
                  backgroundColor: gradient1,
                  radius: 22,
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
