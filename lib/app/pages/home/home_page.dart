import 'package:flutter/material.dart';
import 'package:flutter_base/app/pages/home/home_repository.dart';

class HomePage extends StatefulWidget {
  
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState(HomeRepository());
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
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
  