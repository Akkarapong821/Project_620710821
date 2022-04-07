import 'package:flutter/material.dart';
import 'americano.dart';

class Latte extends StatefulWidget {
  @override
  State<Latte> createState() => _LatteState();
}

class _LatteState extends State<Latte> {
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
                      MaterialPageRoute(builder:(_) => Americano(),
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
                  image: AssetImage("assets/images/latte.jpeg"),
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
                      "ลาเต้",
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
                        Icon(Icons.star, color: Colors.amber),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      " ลาเต้หรือกาแฟลาเต้คือกาแฟใส่นมที่ไล่ระดับชั้นฟองนม เป็นไฮไลท์ให้กับเครื่องดื่มอย่างแท้จริง "
                          "ลาเต้ที่แท้จริงจะประกอบด้วยเอสเปรสโซ หนึ่งหรือสองช็อต รินนมอุ่น ๆ ในปริมาณมาก "
                          "และขั้นสุดท้ายใส่ฟองนมไล่ระดับชั้นบาง ๆ ที่ด้านบน องค์ประกอบทั้งหมดนี้รวมกันจึงทำให้เป็นกาแฟนมที่ลงตัวได้อย่างยอดเยี่ยม "
                          "ซึ่งมีรูปลักษณ์ที่ดูแล้วสวยงามพร้อมรสสัมผัสที่ไม่อาจปฏิเสธได้",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '30฿',
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