import 'package:flutter/material.dart';

class ImagePickerPage extends StatefulWidget {
  final String title;
  const ImagePickerPage({Key key, this.title = "ImagePicker"})
      : super(key: key);

  @override
  _ImagePickerPageState createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
