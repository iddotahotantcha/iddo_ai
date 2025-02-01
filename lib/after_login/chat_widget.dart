import 'package:flutter/material.dart';
import 'package:iddo_ai/constant.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
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
      );
  }
}