import 'package:flutter/material.dart';

class Productdetails extends StatelessWidget {
  final String productTilte;
  final String image;
  final String price;
  final String offerPrice;
  Productdetails(this.productTilte, this.image, this.price, this.offerPrice);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[700],
        elevation: 0.8,
        title: Text("$productTilte"),
        automaticallyImplyLeading: true,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            child: Stack(
              children: <Widget>[
                Image.asset("assets/images/$image", fit: BoxFit.cover),
                Container(
                    padding: EdgeInsets.only(top: 20),
                    alignment: Alignment.topLeft,
                    child: Text(
                      '50% Off',
                      style: TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "$productTilte",
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: "draweritem",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "₹ $price ",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: "textcontent",
                    decoration: TextDecoration.lineThrough,
                    decorationStyle: TextDecorationStyle.solid),
              ),
              Text(
                "₹$offerPrice ",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: "textcontent",
                ),
              ),
            ],
          ),
          Divider(),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Text(
                  "Product Description:",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "draweritem",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 60,
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * .50,
            color: Colors.blue,
            child: Column(
              children: <Widget>[
                Text(
                  "Add to cart",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "draweritem",
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 60,
            width: MediaQuery.of(context).size.width * .50,
            color: Colors.redAccent[200],
            child: Column(
              children: <Widget>[
                Text(
                  "Buy Now",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "draweritem",
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
