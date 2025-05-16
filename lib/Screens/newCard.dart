import 'package:flutter/material.dart';

import '../Components/Constants.dart';
import 'buyCourse.dart';

class addCard extends StatefulWidget {
  static String routeName = '/addCARD';

  const addCard({super.key});

  @override
  State<addCard> createState() => _addCardState();
}

class _addCardState extends State<addCard> {
  int selectedVisa = 0;
bool remember = false ;
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
                    "شراء الكورس",
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
            Container(
              width: double.infinity,
              height: 724,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedVisa = 1;
                                });
                              },
                              child: Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: selectedVisa == 1
                                        ? Colors.transparent
                                        : Colors.blue.withOpacity(0.2),
                                    border: Border.all(
                                      color: selectedVisa == 1
                                          ? Colors.orange
                                          : Colors.transparent,
                                      width: 3,
                                    )),
                                child: Image.asset(
                                  "assets/images/img_10.png",
                                  scale: 1.5,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("فيزا")
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedVisa = 2;
                                });
                              },
                              child: Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: selectedVisa == 2
                                        ? Colors.transparent
                                        : Colors.blue.withOpacity(0.2),
                                    border: Border.all(
                                      color: selectedVisa == 2
                                          ? Colors.orange
                                          : Colors.transparent,
                                      width: 3,
                                    )),
                                child: Image.asset(
                                  "assets/images/img_11.png",
                                  scale: 1.5,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("البطاقة الائتمانية")
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "اضافه بطاقه جديدة ",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'رقم البطاقه الائتمانيه',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: "1234-5678-1234-5678 ",
                            hintTextDirection: TextDirection.rtl,
                            iconColor: Colors.black,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 15,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: ktextColor),
                                gapPadding: 10),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: ktextColor),
                                gapPadding: 10),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 130,
                            ),
                            Text(
                              'CVV',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                  color: Colors.black

                              ),
                            ),
                            Spacer(),
                            Text(
                              'انتهاء الصلاحية',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                color: Colors.black
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 150,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  hintText: "***",
                                  hintTextDirection: TextDirection.rtl,
                                  iconColor: Colors.black,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 15,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: ktextColor),
                                      gapPadding: 10),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: ktextColor),
                                      gapPadding: 10),
                                ),
                                keyboardType: TextInputType.number,
                                obscureText: true,
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 150,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  hintText: "12/30",
                                  hintTextDirection: TextDirection.rtl,
                                  iconColor: Colors.black,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 15,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: ktextColor),
                                      gapPadding: 10),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: ktextColor),
                                      gapPadding: 10),
                                ),
                                keyboardType: TextInputType.datetime,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "حفظ البطاقه",
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                            Checkbox(value: remember,
                                activeColor: Colors.green,
                                onChanged: (value) {
                                  setState(() {
                                    remember = value!;
                                  });
                                })
                          ],
                        ),
        
                      ],
                    )
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