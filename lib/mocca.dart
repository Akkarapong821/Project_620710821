import 'package:cafe/cappuccino.dart';
import 'package:flutter/material.dart';

class Mocca extends StatefulWidget {
  @override
  State<Mocca> createState() => _MoccaState();
}

class _MoccaState extends State<Mocca> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }
  void _decrementCount() {
    if(_count < 1){
      return;
    }
    setState(() {
      _count--;
    });
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.height,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder:(_) => Cappuccino(),
                      ),
                    ),
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              height: 290,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/mocca.jpg"),
                ),
              ),
            ),
            Positioned(
              top: 250,
              child: Container(
                padding: EdgeInsets.all(40),
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "กาแฟ",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "มอคค่า",
                      style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star_outline, color: Colors.amber),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "ถึงแม้จะมีการอธิบายถึงมอคค่าแตกต่างกันไปทั่วโลก แต่พื้นฐานคือเอสเปรสโซหนึ่งช็อตผสมกับผงช็อกโกแลตหรือน้ำเชื่อม "
                          "ใส่นมหรือครีม ซึ่งความแตกต่างของลาเต้ ก็คือมักจะเป็นเอสเปรสโซ 1/3 และนมอุ่น 2/3 "
                          "แต่จะเพิ่มรสช็อกโกแลตและอาจเป็นนมหรือดาร์กช็อกโกแลต",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '30฿',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      width: 170,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: _incrementCount , child: Text("+")),
                          Text("$_count",style: TextStyle(color: Colors.white)),
                          TextButton(onPressed: _decrementCount , child: Text("-"))
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        color: Color(0xff241501),
                        textColor: Colors.white,
                        onPressed: () {},
                        child: Text("สั่งเลย",style: TextStyle(
                          fontSize: 20,
                        ),),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
