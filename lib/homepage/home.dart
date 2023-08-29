import 'package:flutter/material.dart';

class StrutHome extends StatelessWidget {
  const StrutHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF916BBF),
        body: Column(
          children: <Widget>[
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45.0, 18.0, 30.0, 30),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Image.asset("images/strut.png", color: Colors.white),
                  ),
                  const Text(
                    "Strut",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w900),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 85),
              child: Text(
                "Welcome To Strut",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: 'Montserrat'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 140),
              child: Text(
                "Join Us Now!",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontFamily: 'Montserrat'),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(265, 35, 20, 0),
                  child: Image.asset(
                    "images/padlock.png",
                    height: 120,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 205, 20, 0),
                  child: Image.asset(
                    "images/like.png",
                    height: 70,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(265, 335, 20, 0),
                  child: Image.asset(
                    "images/leaf.png",
                    height: 120,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 200,
                      height: 420,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                          image: AssetImage("images/phone.png"),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
