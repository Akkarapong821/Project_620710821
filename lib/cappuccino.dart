import 'package:cafe/espresso.dart';
import 'package:flutter/material.dart';

class Cappuccino extends StatefulWidget {
  @override
  State<Cappuccino> createState() => _CappuccinoState();
}

class _CappuccinoState extends State<Cappuccino> {
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
                        MaterialPageRoute(builder:(_) => Espresso(),
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
                  image: AssetImage("assets/images/cappuccino.jpg"),
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
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "กาแฟ",
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "คาปูชิโน่",
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
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
                      " คาปูชิโนคือการผสมผสานกาแฟเอสเปรสโซ ตีด้วยฟองนมอุ่นๆ ได้อย่างลงตัว "
                          "กาแฟชนิดนี้ล้วนเป็นเรื่องขององค์ประกอบและการแยกส่วนประกอบต่างๆ ออกเป็นสามส่วนให้เท่ากัน "
                          "คาปูชิโนที่รังสรรค์ออกมาสุดฝีมือนั้นจะต้องมีรสชาติเข้มข้น แต่ไม่เปรี้ยวและมีรสชาติหวานมันจากนมเล็กน้อย "
                          "เพราะเราไม่ได้ผสมนมลงไปจริงๆ เอสเปรสโซจึงให้รสชาติที่เข้มข้นขึ้น",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '35฿',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
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
                          Text("$_count"),
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
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () {},
                        child: Text("สั่งเลย",style: TextStyle(
                          fontSize: 20,
                        ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

