import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manasa/Components/Constants.dart';
import 'package:manasa/Screens/Courses.dart';
import 'package:manasa/Screens/HomeScreen.dart';

import 'enums.dart';

class botNavBar extends StatelessWidget {
  const botNavBar({super.key, required this.selectedMenu});

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            MenuState.settings == selectedMenu
                                ? Colors.blue.shade100
                                : Colors.white),
                        elevation: WidgetStateProperty.all(0)),
                    child: Container(
                        height: 40,
                        width: 35,
                        child: SvgPicture.asset(MenuState.settings == selectedMenu
                            ?"assets/images/img_4.png":"assets/images/Frame.svg")),
                  ),
                  Text(
                    "الاعدادات",
                    style: TextStyle(color: MenuState.settings == selectedMenu?kprimaryColor_blue :
                    Colors.black),
                  )
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            MenuState.quizzes == selectedMenu
                                ? Colors.blue.shade100
                                : Colors.white),
                        elevation: WidgetStateProperty.all(0)),
                    child: Container(
                        height: 40,
                        width: 35,
                        child: SvgPicture.asset(
                            MenuState.quizzes == selectedMenu
                                ?"assets/images/img_3.png":"assets/images/jam_task-list.svg")),
                  ),
                  Text(
                    "كويزات",
                    style: TextStyle(color:MenuState.quizzes == selectedMenu?kprimaryColor_blue :
                        Colors.black),
                  )
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Courses.routeName);
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            MenuState.courses == selectedMenu
                                ? Colors.blue.shade100
                                : Colors.white),
                        elevation: WidgetStateProperty.all(0)),
                    child: Container(
                        height: 40,
                        width: 30,
                        child: Image.asset( MenuState.courses == selectedMenu
                            ?"assets/images/img_2.png":
                        "assets/images/img_5.png",
                          color: Colors.grey,
                        )),
                  ),
                  Text(
                    "كورساتك",
                    style: TextStyle(color:MenuState.courses == selectedMenu?kprimaryColor_blue :
                    Colors.black),
                  )
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, home.routeName);

                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            MenuState.home == selectedMenu
                                ? Colors.blue.shade100
                                : Colors.white),
                        elevation: WidgetStateProperty.all(0)),
                    child: Container(
                        height: 40,
                        width: 30,
                        child: Image.asset(MenuState.home == selectedMenu
                            ?"assets/images/img_6.png":"assets/images/img_1.png")),
                  ),
                  Text(
                    "الرئيسية",
                    style: TextStyle(color:MenuState.home == selectedMenu?kprimaryColor_blue :
                    Colors.black),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
