import 'package:flutter/material.dart';
import 'package:manasa/Components/Constants.dart';
import 'package:manasa/Components/theme.dart';
import 'package:manasa/Screens/HomeScreen.dart';
import 'package:manasa/Screens/forgotPass.dart';

class Signin extends StatefulWidget {
  static String routeName = "/signIN";

  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _formKey = GlobalKey<FormState>();
  bool remember = false;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor_blue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 110,
            ),
            Center(
              child: Hero(
                tag: 'logo',
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 27,
                      ),
                      Image.asset(
                        "assets/images/img.png",
                        scale: 2,
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        "Education App",
                        style: TextStyle(
                            color: kprimaryColor_blue,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Container(
              height: 587,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 55, bottom: 20, right: 25, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "سجل دخولك دلوقتى ",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff033663),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "ادخل رقم هاتفك واستمتع بكل مميزاتنا",
                      style: TextStyle(
                          color: ktextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "رقم الهاتف ",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: phoneNumberForm(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "كلمه المرور",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: passwordForm(),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, forgotPass.routeName);

                            },
                            child: Text(
                              "هل نسيت كلمة المرور ؟",
                              style: TextStyle(
                                color: kprimaryColor_blue,
                              ),
                            )),
                        Spacer(),
                        Text(
                          "تذكرني",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Checkbox(
                            value: remember,
                            activeColor: kprimaryColor_blue,
                            onChanged: (value) {
                              setState(() {
                                remember = value!;
                              });
                            }),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, home.routeName);
                            if(_formKey.currentState!=null && _formKey.currentState!.validate()){
                              _formKey.currentState?.save() ;


                            }
                          },
                          child: Text('تسجيل دخول' , style: TextStyle(
                            color: Colors.white ,
                            fontSize: 20 , fontWeight: FontWeight.w500
                          ),),
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(kprimaryColor_blue),
                            alignment: Alignment.center,
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)) ,


                            ),
                        ),
                      ),
                    ))
                    )],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
