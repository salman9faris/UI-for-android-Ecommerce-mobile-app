import 'package:flutter/material.dart';

class Cartpage extends StatelessWidget {
  final String appBarTitle;
  Cartpage(this.appBarTitle);
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
