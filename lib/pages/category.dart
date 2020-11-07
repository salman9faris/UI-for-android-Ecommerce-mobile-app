import 'package:flutter/material.dart';

class Categorypage extends StatelessWidget {
  final String appBarTitle;
  Categorypage(this.appBarTitle);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[700],
        elevation: 0.8,
        automaticallyImplyLeading: true,
        title: Text(appBarTitle),
      ),
    );
  }
}
