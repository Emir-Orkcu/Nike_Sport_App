import 'package:flutter/material.dart';
import 'package:nike_sport_app/detay2.dart';
import 'package:nike_sport_app/detay3.dart';
import 'package:nike_sport_app/detay4.dart';

import 'detay.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(body: Parallax()),
      );
}

class Parallax extends StatefulWidget {
  @override
  _ParallaxState createState() => _ParallaxState();
}

class _ParallaxState extends State<Parallax> {
  late PageController _pageController;
  late double _pageOffset;

  @override
  void initState() {
    super.initState();
    _pageOffset = 0;
    _pageController = PageController(initialPage: 0);
    _pageController.addListener(
      () => setState(() => _pageOffset = _pageController.page ?? 0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(
          pageCount: 10,
          screenSize: MediaQuery.of(context).size,
          offset: _pageOffset,
        ),
        PageView(controller: _pageController, children: [
          Padding(
            padding: const EdgeInsets.only(top: 28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 280,
                  padding: EdgeInsets.all(10),
                  color: Colors.black.withOpacity(0.4),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Text(
                      "Nike Sports",
                      style: TextStyle(
                        fontFamily: "Elyazisi",
                        color: Colors.white,
                        fontSize: 80,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                      width: 70,
                      height: 70,
                      padding: EdgeInsets.all(10),
                      color: Colors.black.withOpacity(0.4),
                      child: Icon(
                        Icons.double_arrow_sharp,
                        size: 56,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, right: 200),
                child: Container(
                  width: 120,
                  height: 40,
                  color: Colors.black.withOpacity(0.4),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      "Training",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Elyazisi",
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detay(
                                      imgPath: "Assets/img_training1.jpg")));
                            },
                      child: Hero(
                        tag:"Assets/img_training1.jpg",
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.black.withOpacity(0.4),
                              image: DecorationImage(
                                  image: AssetImage("Assets/img_training1.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 20,
                      height: 110,
                      color: Colors.black.withOpacity(0.4),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detay2(
                                      imgPath: "Assets/img_training2.jpg")));
                            },
                      child: Hero(
                        tag:"Assets/img_training2.jpg",
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.black.withOpacity(0.4),
                              image: DecorationImage(
                                  image: AssetImage("Assets/img_training2.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detay3(
                                      imgPath: "Assets/img_training3.jpg")));
                            },
                      child: Hero(
                        tag: "Assets/img_training3.jpg",
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.black.withOpacity(0.4),
                              image: DecorationImage(
                                  image: AssetImage("Assets/img_training3.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 20,
                      height: 110,
                      color: Colors.black.withOpacity(0.4),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detay4(
                                      imgPath: "Assets/img_training4.jpg")));
                            },
                      child: Hero(
                        tag:"Assets/img_training4.jpg",
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.black.withOpacity(0.4),
                              image: DecorationImage(
                                  image: AssetImage("Assets/img_training4.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.black.withOpacity(0.4),
                          image: DecorationImage(
                              image: AssetImage("Assets/img_training5.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 20,
                      height: 110,
                      color: Colors.black.withOpacity(0.4),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.black.withOpacity(0.4),
                          image: DecorationImage(
                              image: AssetImage("Assets/img_training6.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ListView(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    width: 180,
                    height: 70,
                    color: Colors.black.withOpacity(0.4),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Equipments",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Elyazisi",
                            fontSize: 24),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/equipments_img1.jpg"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/equipments_img2.jpg"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/equipments_img3.jpg"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/equipments_img4.jfif"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/equipments_img5.jpg"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/equipments_img6.jpg"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ]),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Container(
                  width: 180,
                  height: 50,
                  color: Colors.black.withOpacity(0.4),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Muscle Groups",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Elyazisi",
                          fontSize: 24),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 48,
              ),
              Row(
                children: [
                  Container(
                    width: 180,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("Assets/muscle_img1.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 170,
                    height: 80,
                    color: Colors.white.withOpacity(0.4),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        "Göğüs (CHEST/PECS :Upper, Middle, Lower)",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 170,
                    height: 80,
                    color: Colors.white.withOpacity(0.4),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        "SIRT(BACK :Traps, Lats, Middle-back, Lower-back.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 180,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("Assets/muscle_img2.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 180,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("Assets/muscle_img3.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 170,
                    height: 80,
                    color: Colors.white.withOpacity(0.4),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        "KOLLAR(ARMS :Biceps, Triceps)",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 170,
                    height: 80,
                    color: Colors.white.withOpacity(0.4),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        "KARIN(ABS :Upper Abs, Lower Abs, Obliques)",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 180,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("Assets/muscle_img4.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 60,
                  color: Colors.black.withOpacity(0.4),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Sports Market",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Elyazisi",
                          color: Colors.white,
                          fontSize: 28),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 480,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white.withOpacity(0.4),
                  ),
                  child: ListView(children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                width: 130,
                                height: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "Assets/market_img1.jfif"))),
                              ),
                            ),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Container(
                                  width: 150,
                                  height: 30,
                                  color: Colors.transparent,
                                  child: Text(
                                    "Whey Protein Powder 908gr",
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 40,
                                    color: Colors.transparent,
                                    child: Text(
                                      "16€",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30),
                                    ),
                                  ),
                                  Icon(Icons.sell_outlined),
                                ],
                              )
                            ])
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                width: 130,
                                height: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "Assets/market_img2.jfif"))),
                              ),
                            ),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Container(
                                  width: 150,
                                  height: 30,
                                  color: Colors.transparent,
                                  child: Text(
                                    "Pro Series Instant Whey Protein 33 gr",
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 40,
                                    color: Colors.transparent,
                                    child: Text(
                                      "2€",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30),
                                    ),
                                  ),
                                  Icon(Icons.sell_outlined),
                                ],
                              )
                            ])
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                width: 130,
                                height: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "Assets/market_img3.jfif"))),
                              ),
                            ),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Container(
                                  width: 150,
                                  height: 30,
                                  color: Colors.transparent,
                                  child: Text(
                                    "Fellas High Protein Bar",
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 40,
                                    color: Colors.transparent,
                                    child: Text(
                                      "1€",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30),
                                    ),
                                  ),
                                  Icon(Icons.sell_outlined),
                                ],
                              )
                            ])
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                width: 130,
                                height: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "Assets/market_img4.jfif"))),
                              ),
                            ),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Container(
                                  width: 150,
                                  height: 30,
                                  color: Colors.transparent,
                                  child: Text(
                                    "Eric Favre Iso Zero Whey Protéın 2000 gr",
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 40,
                                    color: Colors.transparent,
                                    child: Text(
                                      "29€",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30),
                                    ),
                                  ),
                                  Icon(Icons.sell_outlined),
                                ],
                              )
                            ])
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                width: 130,
                                height: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "Assets/market_img5.jfif"))),
                              ),
                            ),
                            Column(
                              children:[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Container(
                                width: 150,
                                height: 30,
                                color: Colors.transparent,
                                child: Text("Bigjoy Sports Protein Mix Aroma 68 Servis",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 40,
                                  color:Colors.transparent,
                                  child: Text("20€",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                                ),
                                Icon(Icons.sell_outlined),
                              ],
                            )
                              ])
                          ],
                        ),
                      ],
                    ),

                  ]),
                ),
              ),
            ],
          )
        ]),
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class BackgroundImage extends StatelessWidget {
  BackgroundImage({
    Key? key,
    required this.pageCount,
    required this.screenSize,
    required this.offset,
  }) : super(key: key);

  final Size screenSize;
  final int pageCount;
  final double offset;

  @override
  Widget build(BuildContext context) {
    int lastPageIdx = pageCount - 1;
    int firstPageIdx = 0;
    int alignmentMax = 1;
    int alignmentMin = -1;
    int pageRange = (lastPageIdx - firstPageIdx) - 1;
    int alignmentRange = (alignmentMax - alignmentMin);
    double alignment =
        (((offset - firstPageIdx) * alignmentRange) / pageRange) + alignmentMin;

    return Container(
      height: screenSize.height,
      width: screenSize.width,
      child: Image(
        image: AssetImage('Assets/img4.jpg'),
        alignment: Alignment(alignment, 0),
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
