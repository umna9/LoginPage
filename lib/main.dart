import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'modules/homepage.dart';

void main(){
  return runApp(
    DevicePreview(builder: (context){
      return LoginUi();
    },)
  );
}

class LoginUi extends StatelessWidget{

    @override
  Widget build(BuildContext context) {


    return MaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}