import 'package:flutter/material.dart';

class Orderpage extends StatefulWidget {
  final String appBarTitle;
  Orderpage(this.appBarTitle);

  @override
  _OrderpageState createState() => _OrderpageState();
}

class _OrderpageState extends State<Orderpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(
                    5,
                  )),
            ),
            height: MediaQuery.of(context).size.height * .88,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 65,
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "enter mail",
                        hintText: "helooooo",
                        fillColor: Colors.yellow,
                        focusColor: Colors.green,
                        border: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 3.0,
                  color: Colors.black,
                ),
                Container(
                  height: 350,
                  width: 220,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/images/product-6.jpg",
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 350,
                  width: 220,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/images/product-6.jpg",
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 350,
                  width: 220,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/images/product-6.jpg",
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 350,
                  width: 220,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/images/product-6.jpg",
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            )),
          ),
        ],
      ),
    ));
  }
}
