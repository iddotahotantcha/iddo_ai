import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:iddo_ai/constant.dart';
import 'package:iddo_ai/login/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _obscureTextPasse =
      true; // État pour masquer/afficher le texte pour le password
  bool _obscureTextPasseConfirm =
      true; // État pour masquer/afficher le texte pour la confirmation du password

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
          children: [
            SizedBox(height: 80.0),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeInUp(
                      duration: Duration(milliseconds: 1000),
                      child: Text(
                        "Iddo AI",
                        style: TextStyle(color: Colors.white, fontSize: 40.0),
                      )),
                  SizedBox(height: 10.0),
                  FadeInUp(
                      duration: Duration(milliseconds: 1300),
                      child: Text(
                        "Inscrivez-vous !",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      )),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Container(
                height: screenHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: ListView(
                    children: [
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 60.0),
                            FadeInUp(
                                duration: Duration(milliseconds: 1400),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Color.fromRGBO(225, 95, 27, .3),
                                            blurRadius: 20.0,
                                            offset: Offset(0, 10))
                                      ]),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color:
                                                        Colors.grey.shade200))),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              hintText: "Adresse e-mail",
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              border: InputBorder.none),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color:
                                                        Colors.grey.shade200))),
                                        child: TextField(
                                          obscureText: _obscureTextPasse,
                                          decoration: InputDecoration(
                                            hintText: "Mots de passe",
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: InputBorder.none,
                                            suffixIcon: IconButton(
                                              icon: Icon(
                                                _obscureTextPasse
                                                    ? Icons.visibility_off
                                                    : Icons.visibility,
                                                color: Colors.grey,
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  _obscureTextPasse =
                                                      !_obscureTextPasse; // Inverser l'état
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.grey.shade200))),
                                        child: TextField(
                                          obscureText: _obscureTextPasseConfirm,
                                          decoration: InputDecoration(
                                            hintText:
                                                "Confirmer le mots de passe",
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: InputBorder.none,
                                            suffixIcon: IconButton(
                                              icon: Icon(
                                                _obscureTextPasseConfirm
                                                    ? Icons.visibility_off
                                                    : Icons.visibility,
                                                color: Colors.grey,
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  _obscureTextPasseConfirm =
                                                      !_obscureTextPasseConfirm; // Inverser l'état
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            SizedBox(height: 15.0),
                            FadeInUp(
                                duration: Duration(milliseconds: 1600),
                                child: MaterialButton(
                                  onPressed: () {},
                                  height: 50.0,
                                  // margin: EdgeInsets.symmetric(horizontal: 50),
                                  color: Colors.orange[900],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  // decoration: BoxDecoration(
                                  // ),
                                  child: Center(
                                    child: Text(
                                      "Inscription",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )),
                            SizedBox(height: 50.0),
                            FadeInUp(
                                duration: Duration(milliseconds: 1700),
                                child: Text(
                                  "Ou continuer avec",
                                  style: TextStyle(color: Colors.grey),
                                )),
                            SizedBox(height: 50.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: FadeInUp(
                                      duration: Duration(milliseconds: 1800),
                                      child: MaterialButton(
                                        onPressed: () {},
                                        height: 50.0,
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Image(
                                                width: 30.0,
                                                image: AssetImage(
                                                    "assets/icons/google.png"),
                                              ),
                                              Text("Google",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18.0,
                                                  )),
                                            ],
                                          ),
                                        ),
                                      )),
                                ),
                                SizedBox(width: 30.0),
                                Expanded(
                                  child: FadeInUp(
                                      duration: Duration(milliseconds: 1900),
                                      child: MaterialButton(
                                        onPressed: () {},
                                        height: 50.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        color: Colors.white,
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(
                                                Icons.facebook,
                                                color: Colors.blue,
                                                size: 30.0,
                                              ),
                                              Text(
                                                "Facebook",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: <Widget>[
          Expanded(
            child: FadeInUp(
                duration: Duration(milliseconds: 1800),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("J'ai déjà un compte?",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        )),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text("Connexion",
                          style: TextStyle(
                            color: gradient1,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            decoration: TextDecoration.underline,
                            decorationColor: gradient1,
                            decorationThickness: 2.0,
                          )),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
