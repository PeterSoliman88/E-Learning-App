
import 'package:flutter/material.dart';
import 'package:manasa/Components/Constants.dart';

class Droos extends StatelessWidget {
  String title, description;

  int percentage;

  Droos({
    super.key, required this.title, required this.description, required this.percentage
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
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
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [

            Column(
              children: [
                Stack(children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: CircularProgressIndicator(

                      value: percentage / 100,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          kprimaryColor_blue),
                      backgroundColor: Colors.grey.shade400,
                    ),
                  ),
                  Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          child: Text(
                            " $percentage%",
                            style: TextStyle(
                                color: kprimaryColor_blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                      ))
                ]),
                SizedBox(height: 20,),
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
            Spacer(),
            Column(
              children: [
                Text("$title", textAlign: TextAlign.end, style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
                Text("$description",),
                Container(
                  width: 90,
                  child: TextButton(onPressed: () {}, child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios_new, size: 10,
                        color: kprimaryColor_blue,),
                      SizedBox(width: 5,),
                      Text("تابع", style: TextStyle(
                          color: kprimaryColor_blue,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),)
                    ],
                  )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
