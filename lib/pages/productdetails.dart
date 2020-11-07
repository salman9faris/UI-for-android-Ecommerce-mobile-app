import 'package:flutter/material.dart';
import 'package:freshproduct/pages/cart.dart';

class Productdetailsoff extends StatelessWidget {
  final String title;
  final String image;
  final String price;

  Productdetailsoff(this.title, this.image, this.price);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/images/$image",
            height: MediaQuery.of(context).size.height / 1.8,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  padding: EdgeInsets.only(top: 40),
                  color: Colors.black,
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              IconButton(
                  padding: EdgeInsets.only(top: 40),
                  color: Colors.black,
                  iconSize: 30,
                  icon: Icon(Icons.favorite),
                  onPressed: () {}),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.1,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent[100],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(
                      30,
                    )),
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                '$title',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "draweritem",
                                ),
                              ),
                              Text(
                                '₹$price',
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Qty:',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "draweritem",
                                      ),
                                    ),
                                    Text(
                                      '1Kg',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800,
                                        fontFamily: "draweritem",
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          ListTile(
                            title: Text("Product Details:",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: "draweritem",
                                )),
                            dense: false,
                            subtitle: Text(
                                "our new product,fresh and clean one,we eill server you good product directly form filed",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: "draweritem",
                                )),
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          ListTile(
                            title: Text("Shipping Details:",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: "draweritem",
                                )),
                            subtitle: Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: Text("Shipping Charge:",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "draweritem",
                                          )),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: Text("Expected delivary:",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w800,
                                            fontFamily: "draweritem",
                                          )),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: Text("Free",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "draweritem",
                                          )),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: Text("7 days",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w800,
                                            fontFamily: "draweritem",
                                          )),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.lightBlueAccent[100],
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_basket,
                              color: Colors.white,
                            ),
                            label: Text(
                              "Add to cart",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  letterSpacing: 1),
                            ),
                            color: Colors.redAccent,
                            shape: StadiumBorder(),
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 15,
                                vertical: 10),
                          )
                        ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
