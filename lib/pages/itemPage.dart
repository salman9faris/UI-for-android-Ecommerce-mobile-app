import 'package:flutter/material.dart';
import 'package:freshproduct/pages/cart.dart';
import 'package:freshproduct/pages/productdetail.dart';
import 'package:freshproduct/pages/productdetails.dart';

class Allitem extends StatelessWidget {
  final String appBarTitle;
  Allitem(this.appBarTitle);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[700],
        elevation: 0.8,
        automaticallyImplyLeading: true,
        title: Text(appBarTitle),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Cartpage("Cart")));
              },
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: GridView.count(
        primary: false,
        crossAxisSpacing: 5,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        childAspectRatio: (MediaQuery.of(context).size.height /
            MediaQuery.of(context).size.width *
            0.35),
        padding: EdgeInsets.all(10),
        children: <Widget>[
          GridItems("product-4.jpg", "Cabbage", "60"),
          GridItems("product-6.jpg", "fssgs", "40"),
          GridItems("product-7.jpg", "NFGdgsd", "30"),
          GridItems("product-8.jpg", "Sdfdf", "60"),
          GridItems("product-9.jpg", "Basa", "50"),
          GridItems("product-10.jpg", "Vdeww", "20"),
          GridItems("product-11.jpg", "Cabbage", "60"),
        ],
      ),
    );
  }
}

class GridItems extends StatelessWidget {
  String image;
  String title;
  String price;

  GridItems(this.image, this.title, this.price);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    Productdetailsoff(title, image, price)));
      },
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            height: 220,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/images/$image", fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 5),
          Text("$title",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "draweritem",
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("₹ $price",
                  style: TextStyle(
                      fontSize: 14,
                      //decoration: TextDecoration.lineThrough,
                      decorationStyle: TextDecorationStyle.solid)),
            ],
          ),
        ],
      ),
    );
  }
}
