import "package:flutter/material.dart";

class AspectTest extends StatefulWidget {
  const AspectTest({super.key});

  @override
  State<AspectTest> createState() => _AspectTestState();
}

class _AspectTestState extends State<AspectTest> {

    final double imageWidth = 300;
    final double imageHeight = 200;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.width * imageHeight/imageWidth;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  "assets/july_monsoon/background.png",
                ),
                Container(
                  width: double.infinity,
                  height: width / 2.4,
                  margin: EdgeInsets.only(left: width / 7, right: width / 7, bottom: width / 24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text("hello world",
                  style: TextStyle(
                    fontSize: width/30,
                  ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

/*
info
container height - device width /2.4,
margin - left,right = width/7, botom = width/24

*/