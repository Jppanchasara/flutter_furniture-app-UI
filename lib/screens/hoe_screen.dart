
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:furnitureapp/screens/category_screen.dart';
import 'package:furnitureapp/widgets/products_widget.dart';

class HomeScreen extends StatelessWidget {
  List categories = [
    "Chairs",
    "Sofas",
    "Beds",
    "Tables",
    "Doors",
    "Windows",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Material(
        color: Color(0xFFF3F6FD),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 50, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Our Products",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: () {},
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(12)),
                              color: Color(0xFFF3F6FD),
                              intensity: 1),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: Colors.black,
                    labelColor: Colors.black,
                    isScrollable: true,
                    labelStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    unselectedLabelColor: Colors.black38,
                    tabs: [
                      Tab(
                        text: "Chaiirs",
                      ),
                      Tab(
                        text: "Sofas",
                      ),
                      Tab(
                        text: "Beds",
                      ),
                      Tab(
                        text: "Tables",
                      ),
                    ]),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 360,
                  child: TabBarView(children: [
                    ProductWidget(),
                    ProductWidget(),
                    ProductWidget(),
                    ProductWidget(),
                  ]),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 70,
                  child: ListView.builder(
                    itemCount: categories.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CategoryScreen(category: categories[index].toString(),)));
                        },
                        child: Neumorphic(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 25),
                          style: NeumorphicStyle(
                              intensity: 1,
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(20)),
                              color: Color(0xFFF3F6FD)),
                          child: Center(
                            child: Text(
                              categories[index].toString(),
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Best Offers",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.asset(
                        "images/Product ${index + 1}.png",
                      ),
                      title: Text(
                        "Product Name",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      subtitle: Text(
                        "category",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black38),
                      ),
                      trailing: Text(
                        "\$223",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
