import 'package:get/get.dart';
// import 'package:tic_tac_toe/models/array.dart';
// import 'package:tic_tac_toe/models/listModel.dart';
// import 'package:tic_tac_toe/view/game_screen.dart';

import '../models/array.dart';
import '../models/listModel.dart';
import '../models/names.dart';
class Set_values extends GetxController{

  RxBool turn=true.obs;
RxString winner="".obs;
bool won=false;
  Names name=Get.put(Names());
  List_o_positions values=Get.put(List_o_positions ());

  void emptyList(){
    values.modellist[0]=Model(value: "");
    values.modellist[1]=Model(value: "");
    values.modellist[2]=Model(value: "");
    values.modellist[3]=Model(value: "");
    values.modellist[4]=Model(value: "");
    values.modellist[5]=Model(value: "");
    values.modellist[6]=Model(value: "");
    values.modellist[7]=Model(value: "");
    values.modellist[8]=Model(value: "");
won=false;
turn=true.obs;
  }
  void game_flow(int index) {
    if (won == false) {
      if (values.modellist[index].value == "") {
        if (turn == true) {
          values.modellist[index] = Model(value: "0");
        } else {
          values.modellist[index] = Model(value: "X");
        }
//---------------------------Conditions For O  ---------------------------------------
        if (values.modellist[0].value == "0" &&
            values.modellist[1].value == "0" &&
            values.modellist[2].value == "0") {
          winner.value = name.player_1.value ;
          won = true;
        }
        if (values.modellist[3].value == "0" &&
            values.modellist[4].value == "0" &&
            values.modellist[5].value == "0") {
          winner.value = name.player_1.value;
          won = true;
        }
        if (values.modellist[6].value == "0" &&
            values.modellist[7].value == "0" &&
            values.modellist[8].value == "0") {
          winner.value = name.player_1.value ;
          won = true;
        }
        if (values.modellist[0].value == "0" &&
            values.modellist[3].value == "0" &&
            values.modellist[6].value == "0") {
          winner.value = name.player_1.value ;
          won = true;
        }
        if (values.modellist[1].value == "0" &&
            values.modellist[4].value == "0" &&
            values.modellist[7].value == "0") {
          winner.value = name.player_1.value ;
          won = true;
        }
        if (values.modellist[2].value == "0" &&
            values.modellist[5].value == "0" &&
            values.modellist[8].value == "0") {
          winner.value = name.player_1.value ;
          won = true;
        }
        if (values.modellist[0].value == "0" &&
            values.modellist[4].value == "0" &&
            values.modellist[8].value == "0") {
          winner.value = name.player_1.value ;
          won = true;
        }
        if (values.modellist[2].value == "0" &&
            values.modellist[4].value == "0" &&
            values.modellist[6].value == "0") {
          winner.value = name.player_1.value ;
          won = true;
        }


        //---------------------------Conditions For X  ---------------------------------------
        if (values.modellist[0].value == "X" &&
            values.modellist[1].value == "X" &&
            values.modellist[2].value == "X") {
          winner.value = name.player_2.value ;
          won = true;
        }
        if (values.modellist[3].value == "X" &&
            values.modellist[4].value == "X" &&
            values.modellist[5].value == "X") {
          winner.value = name.player_2.value ;
          won = true;
        }
        if (values.modellist[6].value == "X" &&
            values.modellist[7].value == "X" &&
            values.modellist[8].value == "X") {
          winner.value = name.player_2.value ;
          won = true;
        }
        if (values.modellist[0].value == "X" &&
            values.modellist[3].value == "X" &&
            values.modellist[6].value == "X") {
          winner.value = name.player_2.value ;
          won = true;
        }
        if (values.modellist[1].value == "X" &&
            values.modellist[4].value == "X" &&
            values.modellist[7].value == "X") {
          winner.value = name.player_2.value ;
          won = true;
        }
        if (values.modellist[2].value == "X" &&
            values.modellist[5].value == "X" &&
            values.modellist[8].value == "X") {
          winner.value = name.player_2.value ;
          won = true;
        }
        if (values.modellist[0].value == "X" &&
            values.modellist[4].value == "X" &&
            values.modellist[8].value == "X") {
          winner.value = name.player_2.value ;
          won = true;
        }
        if (values.modellist[2].value == "X" &&
            values.modellist[4].value == "X" &&
            values.modellist[6].value == "X") {
          winner.value = name.player_2.value ;
          won = true;
        }
      }
      turn.value = !turn.value;
    }
  }
}