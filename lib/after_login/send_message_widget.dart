import 'package:flutter/material.dart';
import 'package:iddo_ai/constant.dart';

class SendMessageWidget extends StatefulWidget {
  const SendMessageWidget({super.key});

  @override
  State<SendMessageWidget> createState() => _SendMessageWidgetState();
}

class _SendMessageWidgetState extends State<SendMessageWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30.0,
      ),
      child: Container(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none, // Supprime la bordure par défaut
                  hintText: "    Dites quelque chose...",
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
    );
  }
}