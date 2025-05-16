import 'package:flutter/material.dart';
import 'package:manasa/Screens/SignIN.dart';

import '../Components/Constants.dart';
import '../Components/theme.dart';

class Newpass extends StatefulWidget {
  static String routeName = "/confirmPass";

  const Newpass({super.key});

  @override
  State<Newpass> createState() => _NewpassState();
}

class _NewpassState extends State<Newpass> {
  var _formKey;
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
                    Text(
                      "إعادة تعيين كلمة المرور",
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
                      "أدخل كلمة المرور الجديدة لإكمال عملية إعادة التعيين.",textAlign: TextAlign.end,
                      style: TextStyle(
                          color: ktextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 25,
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "تاكيد كلمه المرور ",
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
                      decoration: confirmPassForm(),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                              width: double.infinity,
                              height: 60,
                              child: TextButton(
                                onPressed: () {
                                  if(_formKey.currentState!=null && _formKey.currentState!.validate()){
                                    _formKey.currentState?.save() ;
                                    Navigator.pushNamed(context, Signin.routeName);

                                  }
                                },
                                child: Text(
                                  'متابعة',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
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
                            )))
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
