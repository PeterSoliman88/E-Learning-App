import 'package:flutter/material.dart';
import 'package:manasa/Components/Constants.dart';
import 'package:manasa/Screens/newCard.dart';

class buyCourse extends StatefulWidget {
  static String routeName = '/buy';

  const buyCourse({super.key});

  @override
  State<buyCourse> createState() => _buyCourseState();
}

class _buyCourseState extends State<buyCourse> {
  int selectedVisa = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor_blue,
      body: Column(
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
                    height: 70,
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
                  Container(
                    height: 280,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          'assets/images/img_12.png',
                          scale: 7,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "لم تتم إضافة أي بطاقة رئيسية",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "يمكنك إضافة بطاقة ائتمانية وحفظها لاستخدامها لاحقًا",
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          maxLines: 2,
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 10,)
                      ],
                    ),
                  ) ,
                  SizedBox(height: 40,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, addCard.routeName);
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(75.0, 10 , 75, 10 ),
                      child: Text(
                        "اضافه بطاقتك الئتمانيه",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
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
                          BorderRadius.circular(10)),
                    ),
                  ),)

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
