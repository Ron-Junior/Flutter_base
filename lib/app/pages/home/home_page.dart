import 'package:flutter/material.dart';
import 'package:flutter_base/app/app_module.dart';
import 'package:flutter_base/app/pages/home/home_repository.dart';
import 'package:flutter_base/app/pages/image_picker/image_picker_module.dart';
import 'package:flutter_base/app/shared/custom_dio/base_dio.dart';

class HomePage extends StatefulWidget {
  
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState(HomeRepository(AppModule.to.getDependency<BaseDio>()));
}

class _HomePageState extends State<HomePage> {

  final HomeRepository repo;

  _HomePageState(this.repo);
  @override
  void initState(){
    super.initState();
    this.repo.registerDevice();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: <Widget>[
          new Container(
            child: new Text('Logado'),
          ),
          RaisedButton(
                  color: Colors.tealAccent,
                  
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => ImagePickerModule())
                    );
                  },
                  child: const Text(
                    'Abrir Image picker',
                    style: TextStyle(fontSize: 20)
                  ),
                ),
        ],
      ),
    );
  }
}
  