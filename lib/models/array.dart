import 'package:get/get.dart';

import 'listModel.dart';

class List_o_positions extends GetxController{
RxList<Model>  modellist=<Model>[].obs;
 //  List<RxString> positions = <RxString>["x".obs,"x".obs,"x".obs,"x".obs,"x".obs,"x".obs,"x".obs,"x".obs,"x".obs,];
 @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fun();
  }

  void fun() {
    var Result=[
      Model( value: ""),
      Model( value: ""),
      Model( value: ""),
      Model( value: ""),
      Model( value: ""),
      Model( value: ""),
      Model( value: ""),
      Model( value: ""),
      Model( value: ""),


    ];
    modellist.value=Result;
  }

}