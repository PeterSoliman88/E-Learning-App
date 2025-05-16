import 'package:flutter/material.dart';
import 'package:manasa/Components/Constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manasa/Components/enums.dart';

import '../Components/BottomNavigation.dart';
import '../Components/droos.dart';

class home extends StatefulWidget {
  static String routeName = '/home';

  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kprimaryColor_blue,
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 32, 52, 149),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset("assets/images/bell.svg"),
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "صباح الخير ",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "علي احمد  ",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 987,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, right: 25, left: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 250,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0, 0),
                                  blurRadius: 20)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset("assets/images/Group 127.png", scale: 0.5,),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.transparent,
                                      ),
                                      child: SvgPicture.asset(
                                        "assets/images/play.svg",
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          LinearProgressIndicator(
                                            value: 0.65,
                                            backgroundColor: Colors.grey,
                                            valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                kprimaryColor_blue),
                                            minHeight: 10,
                                            borderRadius:
                                            BorderRadius.circular(20),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: 22,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(20),
                                              color:
                                              Colors.orangeAccent.shade100,
                                            ),
                                            child: Text(
                                              'قيد التقدم ',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.deepOrange),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      'الوحده الاولى L4',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                          color: kprimaryColor_blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 300,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.arrow_back_ios_new,
                                        color: kprimaryColor_blue,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "تابع الدراسه",
                                        style: TextStyle(
                                            color: kprimaryColor_blue),
                                      ),
                                    ],
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue.shade100),
                                    alignment: Alignment.center,
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(20)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                          child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                width: double.infinity,
                                height: 82,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Column(
                                    children: [
                                      Image.asset(
                                          "assets/images/menu_book_24dp_E8EAED_FILL0_wght300_GRAD0_opsz24 2.png"),

                                      Text(
                                        'دروسك',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  style: ButtonStyle(
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
                                  ),
                                ),
                              ))),

                      Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "عرض الكل",
                                style: TextStyle(color: Colors.orangeAccent , fontSize: 12),
                              )),
                          Spacer(),
                          Text(
                            "اخر تفاعلاتك",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Droos(title:'الدرس الاول الوحده الاولى',
                        percentage: 56,
                        description: 'شرح الدرس الاول من الوحده الاولي ',) ,
                      SizedBox(height: 10,) ,
                      Droos(title:'الدرس الثاني الوحده الاولى',
                        percentage: 76,
                        description: 'شرح الدرس الثاني من الوحده الاولي ',) ,
                    ],
                  ),
                ))
          ]),
        ),
    bottomNavigationBar: botNavBar(selectedMenu: MenuState.home,),
    );
  }
}
