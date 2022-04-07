import 'package:flutter/material.dart';
import 'latte.dart';

class Espresso extends StatefulWidget {
  @override
  State<Espresso> createState() => _EspressoState();
}

class _EspressoState extends State<Espresso> {
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
                      MaterialPageRoute(builder:(_) => Latte(),
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
                  image: AssetImage("assets/images/espresso.jpg"),
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
                      style: TextStyle(fontSize: 17, color:Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "เอสเปรสโซ่ ",
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
                        Icon(Icons.star, color: Colors.amber),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      " เอสเปรสโซไม่ใช่ชนิดเมล็ดกาแฟหรือรูปแบบการคั่ว ซึ่งบ่อยครั้งที่มีการเข้าใจผิด "
                          "แต่เป็นกระบวนการชงกาแฟแทนที่จะเป็นการใช้น้ำร้อนแรงดันสูงผ่านเมล็ดกาแฟที่บดละเอียดมากแล้วราดด้วยครีม่า "
                          "ซึ่งเป็นฟองสีน้ำตาลที่เพิ่มรสเข้มข้นกรุ่นอยู่ในปากอย่างเต็มที่ เอสเปรสโซรสเข้มข้น แต่ก็ยังกลมกล่อม "
                          "โดยปกติมักจะเสิร์ฟในถ้วยแบบเดมิตาส ใบเล็ก ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '35฿',
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
            ),
          ],
        ),
      ),
    );
  }
}