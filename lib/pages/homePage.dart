import 'package:flutter/material.dart';
import 'package:freshproduct/pages/cart.dart';
import 'package:freshproduct/pages/category.dart';
import 'package:freshproduct/pages/itemPage.dart';
import 'package:freshproduct/pages/myorder.dart';
import 'package:freshproduct/pages/productdetail.dart';
import 'package:freshproduct/pages/productdetails.dart';
import 'package:freshproduct/widgets/bodywidgets.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[700],
        elevation: 0.8,
        automaticallyImplyLeading: true,
        title: Text("hello"),
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
      drawer: Container(
        width: MediaQuery.of(context).size.width / 1.25,
        child: Drawer(
          child: ListView(
            children: <Widget>[
              Container(
                height: 130.0,
                child: DrawerHeader(
                  child: Text("Devops",
                      style: TextStyle(
                          fontFamily: "draweritem",
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  decoration: BoxDecoration(color: Colors.cyanAccent[700]),
                ),
              ),
              buildListTileDrawer("All items"),
              Divider(),
              ListTile(
                leading: Icon(Icons.card_travel, color: Colors.black87),
                title: Text("My order",
                    style: TextStyle(
                        fontFamily: "draweritem",
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              Orderpage("Order")));
                },
              ),
              ListTile(
                leading: Icon(Icons.view_list, color: Colors.black87),
                title: Text("My Address",
                    style: TextStyle(
                        fontFamily: "draweritem",
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.location_on, color: Colors.black87),
                title: Text("My account",
                    style: TextStyle(
                        fontFamily: "draweritem",
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.black87),
                title: Text("Settings",
                    style: TextStyle(
                        fontFamily: "draweritem",
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.help_outline, color: Colors.black87),
                title: Text("Contact us",
                    style: TextStyle(
                        fontFamily: "draweritem",
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.black),
                title: Text("Logout",
                    style: TextStyle(
                        fontFamily: "draweritem",
                        fontSize: 18,
                        fontWeight: FontWeight.w700)),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          //physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                padding: EdgeInsets.only(right: 10, left: 10),
                color: Colors.cyanAccent[700],
                child: TextField(
                  style:
                      TextStyle(fontSize: 18, height: .5, color: Colors.black),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Search..",
                    focusColor: Colors.green,
                    border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    suffixIcon: Icon(Icons.search, color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BasicWidget(),
              Divider(
                thickness: 1,
                color: Colors.black54,
              ),
              buildRowheading("New Arrival"),
              Divider(
                thickness: 1,
                color: Colors.black54,
              ),
              Container(
                color: Colors.blue[100],
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      buildimagetile("product-6.jpg", "Cabbage", "50"),
                      buildimagetile("product-4.jpg", "Cabbage", "50"),
                      buildimagetile("product-7.jpg", "carrot", "70"),
                      buildimagetile("product-8.jpg", "juice", "30"),
                      buildimagetile("product-9.jpg", "Onion", "25"),
                      buildimagetile("product-7.jpg", "carrot", "70"),
                      buildimagetile("product-8.jpg", "juice", "30"),
                      buildimagetile("product-9.jpg", "Onion", "25"),
                      buildimagetile("product-10.jpg", "juice", "30"),
                      buildimagetile("product-11.jpg", "Onion", "25"),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black54,
              ),
              buildRowheading("Deal of the Day"),
              Divider(
                thickness: 1,
                color: Colors.black54,
              ),
              Container(
                color: Colors.red[100],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    buildColumnbigtile(
                        "product-10.jpg", "red", "80", "75", "12"),
                    buildColumnbigtile(
                        "product-11.jpg", "blue", "70", "65", "8"),
                  ],
                ),
              ),
              Container(
                color: Colors.red[100],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    buildColumnbigtile(
                        "product-6.jpg", "green", "50", "30", "15"),
                    buildColumnbigtile(
                        "product-7.jpg", "black", "40", "35", "25"),
                  ],
                ),
              ),
              Container(
                color: Colors.red[100],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    buildColumnbigtile(
                        "product-8.jpg", "Cabbage", "60", "50", "10"),
                    buildColumnbigtile(
                        "product-9.jpg", "Cabbage", "20", "15", "20"),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black54,
              ),
              buildRowheading("Vegitables"),
              Divider(
                thickness: 1,
                color: Colors.black54,
              ),
              Container(
                color: Colors.greenAccent[100],
                child: Row(
                  children: <Widget>[
                    buildColumnarray("product-8.jpg", "Cabbage", "60"),
                    buildColumnarray("product-9.jpg", "Carrot", "50"),
                    buildColumnarray("product-10.jpg", "Juice", "90"),
                  ],
                ),
              ),
              Container(
                color: Colors.greenAccent[100],
                child: Row(
                  children: <Widget>[
                    buildColumnarray("product-4.jpg", "Cabbage", "60"),
                    buildColumnarray("product-6.jpg", "Carrot", "50"),
                    buildColumnarray("product-7.jpg", "Juice", "90"),
                  ],
                ),
              ),
              Container(
                color: Colors.greenAccent[100],
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  children: <Widget>[
                    Spacer(
                      flex: 5,
                    ),
                    ButtonTheme(
                      minWidth: 45.0,
                      height: 20.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        color: Colors.white,
                        textColor: Colors.black,
                        padding: EdgeInsets.all(1.0),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Allitem("Vegitables")));
                        },
                        child: Text(
                          "View All",
                          style: TextStyle(fontSize: 8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black54,
              ),
              buildRowheading("Fruits"),
              Divider(
                thickness: 1,
                color: Colors.black54,
              ),
              Container(
                color: Colors.pink[100],
                child: Row(
                  children: <Widget>[
                    buildColumnarray("product-4.jpg", "Cabbage", "60"),
                    buildColumnarray("product-6.jpg", "Carrot", "50"),
                    buildColumnarray("product-7.jpg", "Juice", "90"),
                  ],
                ),
              ),
              Container(
                color: Colors.pink[100],
                child: Row(
                  children: <Widget>[
                    buildColumnarray("product-4.jpg", "Cabbage", "60"),
                    buildColumnarray("product-6.jpg", "Carrot", "50"),
                    buildColumnarray("product-7.jpg", "Juice", "90"),
                  ],
                ),
              ),
              Container(
                color: Colors.pink[100],
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  children: <Widget>[
                    Spacer(
                      flex: 5,
                    ),
                    ButtonTheme(
                      minWidth: 45.0,
                      height: 20.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        color: Colors.white,
                        textColor: Colors.black,
                        padding: EdgeInsets.all(1.0),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Allitem("Fruits")));
                        },
                        child: Text(
                          "View All",
                          style: TextStyle(fontSize: 8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildListTileDrawer(String title) {
    return ListTile(
      leading: Icon(Icons.category, color: Colors.black87),
      title: Text("$title",
          style: TextStyle(
              fontFamily: "draweritem",
              fontSize: 18,
              fontWeight: FontWeight.bold)),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    Categorypage("All Category")));
      },
    );
  }

  Column buildColumnarray(String image, String title, String price) {
    return Column(
      children: <Widget>[
        buildimagetile("$image", "$title", "$price"),
      ],
    );
  }

  Column buildColumnbigtile(String image, String title, String price,
      String offerprice, String offerpercentage) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            Productdetails(title, image, price, offerprice)));
              },
              child: Container(
                padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                height: 250,
                width: 190,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/images/$image", fit: BoxFit.cover),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 20),
                alignment: Alignment.topLeft,
                child: Text(
                  '$offerpercentage%',
                  style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                )),
          ],
        ),
        Text("$title", style: TextStyle(fontSize: 12)),
        Row(
          children: <Widget>[
            Text("₹ $price",
                style: TextStyle(
                    fontSize: 14,
                    decoration: TextDecoration.lineThrough,
                    decorationStyle: TextDecorationStyle.solid)),
            Text(" ₹$offerprice",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ],
    );
  }

  Padding buildimagetile(String image, String text, String price) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      Productdetailsoff(text, image, price)));
        },
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              width: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/$image", fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(text, style: TextStyle(fontSize: 12)),
            Text("₹ $price",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }

  Row buildRowheading(String text) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: "draweritem",
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3.0),
              ),
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
