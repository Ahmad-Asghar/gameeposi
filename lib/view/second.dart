import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../models/array.dart';
import '../models/names.dart';
import 'game_screen.dart';
class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Names name=Get.put(Names());
    List_o_positions values=Get.put(List_o_positions ());

    var play1= new TextEditingController();
    var play2= new TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/back1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(
      'Enter Names',
      style: GoogleFonts.caveat(
        color: Colors.white,
        fontSize: 1.7.cm,
        fontWeight: FontWeight.bold,

      ),
    ),
   SizedBox(height: 2.h,),
   Container(

     decoration: BoxDecoration(
       color: Colors.yellow,
      borderRadius: BorderRadius.circular(20),
     ),

     height: 9.h,
     width: 75.w,
     child:
     Padding(
       padding:  EdgeInsets.only(left: 4.w),
       child: TextField(
         controller: play1,


         style: TextStyle(

color: Colors.black,
           fontSize: 3.h,
         ),

       cursorHeight: 4.h,
       cursorColor: Colors.black,
         decoration: InputDecoration(
           border: InputBorder.none
               ,labelText: "Player 1",
           hintStyle: TextStyle(
             fontSize: 3.5.h
           )
         ),
       ),
     ),
   ),
    SizedBox(
      height: 5.h,
    ),
    Container(

      decoration: BoxDecoration(
        color: Colors.orange[300],
        borderRadius: BorderRadius.circular(20),
      ),

      height: 9.h,
      width: 75.w,
      child:
      Padding(
        padding:  EdgeInsets.only(left: 4.w),
        child: TextField(
          controller: play2,

          style: TextStyle(
            color: Colors.black,
            fontSize: 3.h,
          ),

          cursorHeight: 4.h,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            errorBorder: InputBorder.none,
              border: InputBorder.none
              ,labelText: "Player 2",
              hintStyle: TextStyle(
                  fontSize: 3.5.h
              )
          ),
        ),
      ),
    ),
    SizedBox(height: 4.h,),
    MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      minWidth: Adaptive.w(40),    // This will take 20% of the screen's width
      height: 8.h,
      color: Colors.purple[300],
      onPressed: (){
        name.setName1(play1.text.obs);
        name.setName2(play2.text.obs);
values.fun();
        Get.to(() =>game_screen());

      },
      child:  Text(
        "Let's Play",
        style: GoogleFonts.caveat(
          color: Colors.white,
          fontSize: 4.h,
          fontWeight: FontWeight.bold,

        ),
      ),
    ),
  ],
),

        ),
      ),
    );
  }
}
