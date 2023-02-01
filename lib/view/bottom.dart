import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
//import 'package:tic_tac_toe/models/bottomsheet.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../models/bottomsheet.dart';
class bottoms extends StatelessWidget {
  const bottoms({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    bottomsModel bottom=Get.put(bottomsModel());
    void bottomsheet(){
      showMaterialModalBottomSheet(
        context: context,
        builder: (context) => Container(
          height: 30.h,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.only(
             topLeft: Radius.circular(15),
             topRight: Radius.circular(15),
           )
         ),
          child: Padding(
            padding:  EdgeInsets.all(1.h),
            child: GridView.builder(
              itemCount: 18,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0
              ),
              itemBuilder: (BuildContext context, int index){
                return Container(

child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Image(image: AssetImage(bottom.icons[index]),
    height: 7.5.h,
      width: 15.w,
    ),
    Text(bottom.names[index]),
  ],
),
                );
              },
            ),
          )),

      );
    }
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          onPressed: () {
           bottomsheet();
          },
          child: Icon(Icons.share),
        ),
        body: Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomDropdownButton2(

                hint: 'Select Item',
                dropdownItems: bottom.items,
                value: bottom.items[0],
                onChanged: (value) {
bottom.setage(value);
                },
              ),
            ],
          ),
          color: Colors.blue[200],
          height: double.infinity,
          width: double.infinity,
          
        ),
      ),
    );
  }
}
