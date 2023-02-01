
import 'package:get/get.dart';
class Names extends GetxController{
  RxString player_1="A".obs;
  RxString player_2="B".obs;
   RxInt score_player_1=0.obs;
  RxInt score_player_2=0.obs;
  void setName1(RxString txt1){
    print("yES");
    print(txt1);

player_1=txt1;

print(player_1);
print("After ");
  }
  void setName2(RxString txt2){
player_2=txt2;
  }
}