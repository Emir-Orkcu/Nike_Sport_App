import 'package:flutter/material.dart';

class Detay2 extends StatefulWidget {
  var imgPath;
  Detay2({this.imgPath});

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Hero(
        tag: widget.imgPath,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
        ),
      ),
      ListView(scrollDirection: Axis.vertical, children: [
        SizedBox(
          width: 240,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  width: 180,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(52),
                    color: Colors.black.withOpacity(0.4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Text(
                      "Normal Shuttle",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 65,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Text(
                            "Medium",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 26),
                          ),
                          Text(
                            "Intensity",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Column(
                        children: [
                          Text(
                            "45",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 26),
                          ),
                          Text(
                            "Average Minute",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text(
                            "Easy Level",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 26),
                          ),
                          Text(
                            "Level",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Text(
                  "Start",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                height: 420,
                color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 34),
                        child: Text(
                          "What situations is it ideal for?",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          "Athletics - Body Stamina - Functional Force",
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.4)),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 340,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 160),
                          child: Text("The Shuttle Run Test is a test for aerobic fitness. The cones you see are 20 metres apart. You will listen to the instructions on the CD and then be given a five-second count down to start the test.",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("Assets/detay_img2.jpg"))),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ])
    ]));
  }
}
