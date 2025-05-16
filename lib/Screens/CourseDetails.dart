import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manasa/Components/Constants.dart';
import 'package:manasa/Screens/buyCourse.dart';

class Coursedetails extends StatelessWidget {
  static String routeName = "/coursedetails";

  const Coursedetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor_blue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Spacer(),
                  Text(
                    "تفاصيل الكورس",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 25,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            IntrinsicHeight(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 900,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assets/images/full office pic.jpg",
                                    scale: 0.5,
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    top: 0,
                                    left: 0,
                                    child: Transform.scale(
                                      scale: 0.5,
                                      child: SvgPicture.asset(
                                        "assets/images/play.svg",
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 150,
                                          decoration: BoxDecoration(
                                              color: Colors.transparent),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: Colors.orange,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            4.0),
                                                    child: Text(
                                                      "الصف الاول الثانوى",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15),
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          'الترم التانى الوحده الاولى ',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              color: kprimaryColor_blue,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolore eu fugiat nulla pariatur. Excepteur sint o",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        color: CupertinoColors.systemGrey,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("10 ساعة "),
                                        Image.asset(
                                          "assets/images/img_8.png",
                                          scale: 2,
                                        ),
                                        Spacer(),
                                        Text("16 اختبار "),
                                        Image.asset(
                                          "assets/images/img_7.png",
                                          scale: 2,
                                        ),
                                        Spacer(),
                                        Text("12 درس "),
                                        Image.asset(
                                          "assets/images/img_9.png",
                                          scale: 2,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Spacer(),
                                        Text(
                                          "محتوى الكورس",
                                          textDirection: TextDirection.rtl,
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "25 Mins",
                                              style: TextStyle(
                                                color: kprimaryColor_blue,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              " المقدمة- ",
                                              style: TextStyle(
                                                  color: kprimaryColor_blue,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              " المحاضره التانيه  ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SvgPicture.asset(
                                                "assets/images/Fill 2.svg"),
                                            Spacer(),
                                            Column(
                                              children: [
                                                Text(
                                                  "مقدمه فى الكيمياء الكهربيه",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "15 دقيقه",
                                                  textAlign: TextAlign.end,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.blueGrey
                                                      .withOpacity(0.2)),
                                              child: Center(
                                                  child: Text(
                                                "01",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SvgPicture.asset(
                                                "assets/images/Fill 2.svg"),
                                            Spacer(),
                                            Column(
                                              children: [
                                                Text(
                                                  "مقدمه فى الكيمياء الكهربيه",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "15 دقيقه",
                                                  textAlign: TextAlign.end,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.blueGrey
                                                      .withOpacity(0.2)),
                                              child: Center(
                                                  child: Text(
                                                "02",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SvgPicture.asset(
                                                "assets/images/Fill 2.svg"),
                                            Spacer(),
                                            Column(
                                              children: [
                                                Text(
                                                  "مقدمه فى الكيمياء الكهربيه",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "15 دقيقه",
                                                  textAlign: TextAlign.end,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.blueGrey
                                                      .withOpacity(0.2)),
                                              child: Center(
                                                  child: Text(
                                                "03",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "25 Mins",
                                              style: TextStyle(
                                                color: kprimaryColor_blue,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              " المقدمة- ",
                                              style: TextStyle(
                                                  color: kprimaryColor_blue,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              " المحاضره التانيه  ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SvgPicture.asset(
                                                "assets/images/Fill 2.svg"),
                                            Spacer(),
                                            Column(
                                              children: [
                                                Text(
                                                  "مقدمه فى الكيمياء الكهربيه",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "15 دقيقه",
                                                  textAlign: TextAlign.end,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.blueGrey
                                                      .withOpacity(0.2)),
                                              child: Center(
                                                  child: Text(
                                                "01",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SvgPicture.asset(
                                                "assets/images/Fill 2.svg"),
                                            Spacer(),
                                            Column(
                                              children: [
                                                Text(
                                                  "مقدمه فى الكيمياء الكهربيه",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "15 دقيقه",
                                                  textAlign: TextAlign.end,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.blueGrey
                                                      .withOpacity(0.2)),
                                              child: Center(
                                                  child: Text(
                                                "02",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SvgPicture.asset(
                                                "assets/images/Fill 2.svg"),
                                            Spacer(),
                                            Column(
                                              children: [
                                                Text(
                                                  "مقدمه فى الكيمياء الكهربيه",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "15 دقيقه",
                                                  textAlign: TextAlign.end,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.blueGrey
                                                      .withOpacity(0.2)),
                                              child: Center(
                                                  child: Text(
                                                "03",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(color: Colors.white60.withOpacity(0.9)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Text(
                "500 ج.م",
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              Spacer(),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, buyCourse.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "التسجيل فالكورس",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),style :ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(
                    kprimaryColor_blue),
                alignment: Alignment.center,
                shape: MaterialStateProperty.all<
                    RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(20)),
                ),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
