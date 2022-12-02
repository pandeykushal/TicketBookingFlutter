import 'package:flutter/cupertino.dart';
import  'package:get/get.dart';
class AppLayout{
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
  static getScreenHeight(){
    return Get.height;

  }
  static getScreenwidth(){
    return Get.width;

  }
  static getHeight(double pixeles){
    double x =getScreenHeight()/pixeles;
    return  getScreenHeight()/x;
  }


  static getWidth(double pixeles){
    double x =getScreenwidth()/pixeles;
    return  getScreenwidth()/x;
  }

}