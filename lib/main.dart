import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'view/second.dart';
import 'view/bottom.dart';
void main() {

  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,

          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: start(),
        );
      },

    );
  }
}
class start extends StatelessWidget {
  const start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.deepPurple,
         onPressed: () {
           Get.to(bottoms());
         },
         child: Icon(Icons.share),
       ),
backgroundColor: Colors.blue[900],
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/back1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          width: double.infinity,    // This will take 100% of the screen's width
          height: double.infinity,

          child: Column(
            children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'T',
              style: GoogleFonts.caveat(
                color: Colors.yellow,
                fontSize: 3.2.cm,
                fontWeight: FontWeight.bold,

              ),
            ),
            Text(
              'I',
              style: GoogleFonts.caveat(
                color: Colors.red,
                fontSize: 3.2.cm,
                fontWeight: FontWeight.bold,

              ),
            ),
            Text(
              'C',
              style: GoogleFonts.caveat(
                color: Colors.yellow,
                fontSize: 3.2.cm,
                fontWeight: FontWeight.bold,

              ),
            ),
          ],
        ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'T',
                    style: GoogleFonts.caveat(
                      color: Colors.red,
                      fontSize: 3.2.cm,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  Text(
                    'A',
                    style: GoogleFonts.caveat(
                      color: Colors.yellow,
                      fontSize: 3.2.cm,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  Text(
                    'C',
                    style: GoogleFonts.caveat(
                      color: Colors.red,
                      fontSize: 3.2.cm,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'T',
                    style: GoogleFonts.caveat(
                      color: Colors.yellow,
                      fontSize: 3.2.cm,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  Text(
                    'O',
                    style: GoogleFonts.caveat(
                      color: Colors.red,
                      fontSize: 3.2.cm,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  Text(
                    'E',
                    style: GoogleFonts.caveat(
                      color: Colors.yellow,
                      fontSize: 3.2.cm,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minWidth: Adaptive.w(65),    // This will take 20% of the screen's width
                height: 8.h,
                color: Colors.purple[300],
                onPressed: (){

                },
                child:  Text(
                  ' Single Player',
                  style: GoogleFonts.caveat(
                    color: Colors.white,
                    fontSize: 4.h,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minWidth: Adaptive.w(65),    // This will take 20% of the screen's width
                height: 8.h,
                color: Colors.orange[300],
                onPressed: (){

                  Get.to(second());
                },
                child:  Text(
                  'Double Player',
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
