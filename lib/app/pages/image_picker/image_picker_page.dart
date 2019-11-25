import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerPage extends StatefulWidget {
  final String title;
  const ImagePickerPage({Key key, this.title = "ImagePicker"})
      : super(key: key);

  @override
  _ImagePickerPageState createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {

  File image;
  
  openGallery(BuildContext context) async{
    var img = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      image = img;
    });
    Navigator.of(context).pop();
  }

  openCamera(BuildContext context) async{
    var img = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      image = img;
    });
    Navigator.of(context).pop();
  }

  Future<void> showChoiceDialog(BuildContext context) {
    return showDialog(context: context,builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Escolha uma opção"),
        content: SingleChildScrollView (
          child: ListBody (
            children: <Widget>[
              GestureDetector(
                child: Text("Galeria"),
                onTap: (){
                  openGallery(context);
                },
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              GestureDetector(
                child: Text("Camera"),
                onTap: (){
                  openCamera(context);
                },
              )
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
        child: new Center(
          child: image == null
              ? new Text('Nenhuma imagem :)')
              : new Image.file(image),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          showChoiceDialog(context);},
        tooltip: 'Pick Image',
        child: new Icon(Icons.add_a_photo),
      ),
    );
  }
}
