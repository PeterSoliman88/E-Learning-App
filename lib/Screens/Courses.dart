import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Components/BottomNavigation.dart';
import '../Components/Constants.dart';
import '../Components/courses.dart';
import '../Components/enums.dart';

class Courses extends StatefulWidget {
  static String routeName = '/courses';

  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  int selectedbutton = 1;
  int selectedGrade = 0;

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
                Spacer(),
                Text(
                  "الكورسات",
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
          Container(
              height: 987,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 45,
                  width: 320,
                  decoration: BoxDecoration(
                      color: CupertinoColors.systemGrey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Container(
                          width: 150,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                selectedbutton = 2;
                              });
                            },
                            child: Text(
                              "كورساتى",
                              style: TextStyle(
                                  color: selectedbutton == 2
                                      ? Colors.white
                                      : kprimaryColor_blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  selectedbutton == 2
                                      ? kprimaryColor_blue
                                      : Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 150,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                selectedbutton = 1;
                              });
                            },
                            child: Text(
                              "كل الكورسات",
                              style: TextStyle(
                                  color: selectedbutton == 1
                                      ? Colors.white
                                      : kprimaryColor_blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        selectedbutton == 1
                                            ? kprimaryColor_blue
                                            : Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        child: TextFormField(
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: "هل تبحث عن كورس ما ؟",
                            hintTextDirection: TextDirection.rtl,
                            iconColor: Colors.black,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            suffixIcon: Icon(Icons.search),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: ktextColor),
                                gapPadding: 10),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: ktextColor),
                                gapPadding: 10),
                          ),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedGrade = 3;
                              });
                            },
                            child: IntrinsicWidth(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 2.0, right: 2),
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: selectedGrade == 3
                                            ? Colors.deepOrange
                                            : Colors.transparent,
                                      ),
                                      color: selectedGrade == 3
                                          ? Colors.transparent
                                          : Colors.yellow.shade300,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      "الصف التالت الثانوى",
                                      style: TextStyle(
                                        color: Colors.orangeAccent,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedGrade = 2;
                              });
                            },
                            child: IntrinsicWidth(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 2.0, right: 2),
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: selectedGrade == 2
                                            ? Colors.deepOrange
                                            : Colors.transparent,
                                      ),
                                      color: selectedGrade == 2
                                          ? Colors.transparent
                                          : Colors.yellow.shade300,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      "الصف التانى الثانوى",
                                      style: TextStyle(
                                        color: Colors.orangeAccent,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedGrade = 1;
                              });
                            },
                            child: IntrinsicWidth(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 2.0, right: 2),
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: selectedGrade == 1
                                            ? Colors.deepOrange
                                            : Colors.transparent,
                                      ),
                                      color: selectedGrade == 1
                                          ? Colors.transparent
                                          : Colors.yellow.shade300,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      "الصف الاول الثانوى",
                                      style: TextStyle(
                                        color: Colors.orangeAccent,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedGrade = 0;
                              });
                            },
                            child: IntrinsicWidth(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 2.0, right: 2),
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: selectedGrade == 0
                                            ? Colors.deepOrange
                                            : Colors.transparent,
                                      ),
                                      color: selectedGrade == 0
                                          ? Colors.transparent
                                          : Colors.yellow.shade300,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      "الكل",
                                      style: TextStyle(
                                        color: Colors.orangeAccent,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    selectedbutton == 1 ? AllCourses() : MyCourses()
                  ],
                )
              ]))
        ]),
      ),
      bottomNavigationBar: botNavBar(
        selectedMenu: MenuState.courses,
      ),
    );
  }
}
