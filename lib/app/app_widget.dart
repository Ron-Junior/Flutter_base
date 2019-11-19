import 'package:flutter/material.dart';
//import 'package:flutter_base/app/pages/home/home_module.dart';
import 'package:flutter_base/app/pages/image_picker/image_picker_module.dart';

class AppWidget extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImagePickerModule(),
    );
  }
}
  