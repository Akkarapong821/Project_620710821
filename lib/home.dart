import 'package:cafe/mocca.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: size.height,
            width: size.height,
            child: Image.asset("assets/images/bg1.jpg", fit: BoxFit.cover),
          ),
          Container(
            padding: EdgeInsets.all(48),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor.withOpacity(.4)
                ],
              ),
            ),
            child: Image.asset('assets/images/coffee1.png'),
          ),
          Positioned(
            bottom: 50,
            child: SizedBox(
              height: 60,
              width: 150,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Color(0xffB98C53),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Mocca(),
                  ),
                ),
                child: Text(
                  "เลือกซื้อ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}