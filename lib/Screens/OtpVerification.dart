import 'package:flutter/material.dart';
import 'package:manasa/Screens/NewPass.dart';
import 'package:pinput/pinput.dart';

import '../Components/Constants.dart';


class Otpverification extends StatefulWidget {
  static String routeName = "/Otp";

  const Otpverification({super.key});

  @override
  State<Otpverification> createState() => _OtpverificationState();
}

class _OtpverificationState extends State<Otpverification> {
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
                       Text("تأكيد رمز التحقق لمرة واحدة (OTP) " , textAlign: TextAlign.end,
                           style: TextStyle(
                             fontSize: 28,
                             fontWeight: FontWeight.bold,
                             color: Color(0xff033663),
                           ),

              ) ,
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "يرجى إدخال رمز التحقق المُرسَل إلى رقم هاتفك   ",
                      style: TextStyle(
                          color: ktextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "كود التفعيل  ",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Pinput(
                      keyboardType: TextInputType.number,
                      length: 6,
                      showCursor: true,
                      defaultPinTheme: PinTheme(
                          width: 70,
                          height: 70,
                          textStyle: TextStyle(
                            fontSize: 20,
                            color: kprimaryColor_blue,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: kprimaryColor_blue))),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Center(
                        child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                              width: double.infinity,
                              height: 60,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, Newpass.routeName);
                                },
                                child: Text('متابعة' , style: TextStyle(
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
                    )

                   ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
