import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:tic_tac_toe/controller/set_values.dart';
// import 'package:tic_tac_toe/models/array.dart';
// import 'package:tic_tac_toe/view/second.dart';
import '../controller/set_values.dart';
import '../models/array.dart';
import '../models/names.dart';
import 'package:giff_dialog/giff_dialog.dart';
class game_screen extends StatelessWidget {

  const game_screen({Key? key}) : super(key: key);


  Widget build(BuildContext context) {

    Names name=Get.put(Names());
    List_o_positions values=Get.put(List_o_positions ());
    Set_values change=Get.put(Set_values());

    void dialouge () {
      showDialog(
          context: context,builder: (_) => AssetGiffDialog(

onlyOkButton: true,
        buttonOkColor: Colors.deepPurple,
        buttonOkText: Text("Play Again",
        style: TextStyle(
          color: Colors.white
        ),
        ),
        title: Text("${change.winner.value} Won",
          style: TextStyle(
              fontSize: 5.h, fontWeight: FontWeight.w600),
        ),

        entryAnimation: EntryAnimation.bottomRight,
        onOkButtonPressed: () {

  change.emptyList();
  Navigator.pop(context);
          },
        image:
      Image(image: AssetImage("images/success.png"),
        height: 1.h,
        width: 10.w,
      ),
      ) );
    }
    return Scaffold(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                          image: AssetImage("images/boy.png",
                          ),
                      height: 10.h,
                        width: 20.w,
                      ),
                      Obx(
                            () =>  Text(
                          name.player_1.value,
                          style: GoogleFonts.caveat(
                            color: Colors.black,
                            fontSize: 3.7.h,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ),
                      Text("X",
                        // name.score_player_1.value.toString(),
                        style: GoogleFonts.caveat(
                          color: Colors.red,
                          fontSize: 3.7.h,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                   borderRadius: BorderRadius.circular(20),
                  ),
                  height: 20.h,
                  width: 30.w,

                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(image: AssetImage("images/boy2.png"),
                        height: 10.h,
                        width: 20.w,
                      ),
                      Obx(
                              () => Text(
                          name.player_2.value ,
                          style: GoogleFonts.caveat(
                            color: Colors.black,
                            fontSize: 3.7.h,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ),
                      Text(
                        name.score_player_2.value.toString(),
                        style: GoogleFonts.caveat(
                          color: Colors.red,
                          fontSize: 3.7.h,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 20.h,
                  width: 30.w,

                ),
              ],
            ),
            SizedBox(height: 2.h,),
            // GetBuilder<Names>(
            //     init: Names(),
            //   builder: (name){
            //       return Text(change.turn==true?name.player_1.value:name.player_2.value);
            //   }
            //     ),
            Obx(
                  () =>  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                       change.turn.value==true?name.player_1.value:name.player_2.value,
                        style: GoogleFonts.concertOne(
                          color: Colors.white,
                          // color: change.turn==true?Colors.orange:Colors.black,
                          fontSize: 5.7.h,
                          fontWeight: FontWeight.bold,

                        ),

                      ),
              Text(
               "'s Turn",
                style: GoogleFonts.concertOne(
                  color: Colors.white,
                  // color: change.turn==true?Colors.orange:Colors.black,
                  fontSize: 5.7.h,
                  fontWeight: FontWeight.bold,

                ),)
                    ],
                  ),
            ),
            // GetX<Names>(
            //     init: Names(),
            //     builder: (name){
            //   return
            //       Text(
            //           change.turn==true?name.player_1.value.toString():name.player_2.value,
            //       style: TextStyle(
            //         color: Colors.white
            //       ),
            //       );
            //
            // }),

            Container(

child: Padding(
  padding:  EdgeInsets.all(1.h),
  child:
   Obx(
     ()=>GridView.builder(

          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(

            crossAxisSpacing: 5,
            crossAxisCount: 3,
              mainAxisSpacing: 5,

          ),
          itemCount: values.modellist.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: (){

                change.game_flow(index);
                if(change.won==true){

                  dialouge();
                }
              },
              child: Container(

child:   Obx(
          () =>  Align(
            alignment: Alignment.center,
            child: Text(
        values.modellist[index].value!,
        style: GoogleFonts.concertOne(
          color: Colors.orange,
            // color: change.turn==true?Colors.orange:Colors.black,
            fontSize: 11.7.h,
            fontWeight: FontWeight.bold,

        ),
      ),
          ),
),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),

              ),
            );
          }
      ),
   ),
  ),

              decoration: BoxDecoration(
               // color: Colors.orange[200],
                borderRadius: BorderRadius.circular(20),
              ),
              height: 54.h,
              width: 95.w,

            ),
            // Obx(
            //       () =>  Text(
            //        change.winner.toString(),
            //         style: GoogleFonts.concertOne(
            //           color: Colors.orange,
            //           // color: change.turn==true?Colors.orange:Colors.black,
            //           fontSize: 5.7.h,
            //           fontWeight: FontWeight.bold,
            //
            //         ),
            //       ),
            // ),



          ],
        ),
      ),

    );
  }
}
