import 'package:cafe/home.dart';
import 'package:flutter/material.dart';
import 'mocca.dart';

class Americano extends StatefulWidget {
  @override
  State<Americano> createState() => _AmericanoState();
}

class _AmericanoState extends State<Americano> {
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
        height: double.infinity,
        width: double.infinity,
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
                      MaterialPageRoute(builder:(_) => Home(),
                      ),
                    ),
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              height: 290,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/Americano.jpg"),
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
                      "อเมริกาโน่",
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
                      " อเมริกาโนคือน้ำร้อนผสมเอสเปรสโซเท่านั้น จะเสิร์ฟเอสเปรสโซ 1/2 และ 1/2 หรือ 1/3 ต่อน้ำ 2/3 ซึ่งขึ้นอยู่กับร้านกาแฟหรือวิธีการที่คุณเลือกชง  "
                          "มีการถกเถียงกันว่าควรใส่เอสเปรสโซหรือน้ำร้อนก่อน แต่ในกรณีที่เป็นอเมริกาโน ควรเติมเอสเปรสโซก่อนเสมอ "
                          "เพราะว่าครีมจะผสมกันและให้รสชาติหวานกลมกล่อมยิ่งขึ้น ตามธรรมเนียมแล้วจะไม่เติมนม แต่บางคนอาจจะเติมก็ได้ แล้วแต่ความชอบส่วนตัว ",
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