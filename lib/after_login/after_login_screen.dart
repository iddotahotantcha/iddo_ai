import 'package:flutter/material.dart';
import 'package:iddo_ai/after_login/chat_widget.dart';
import 'package:iddo_ai/after_login/drawer_widget.dart';
import 'package:iddo_ai/after_login/send_message_widget.dart';
import 'package:iddo_ai/constant.dart';

class AfterLoginScreen extends StatefulWidget {
  const AfterLoginScreen({super.key});

  @override
  State<AfterLoginScreen> createState() => _AfterLoginScreenState();
}

class _AfterLoginScreenState extends State<AfterLoginScreen> {
  @override
  Widget build(BuildContext context) {
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
      drawer: DrawerWidget(),
      body: ChatWidget(),
      floatingActionButton: SendMessageWidget(),
    );
  }
}
