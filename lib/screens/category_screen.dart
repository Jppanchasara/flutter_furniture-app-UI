// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:furnitureapp/screens/CatProductCard.dart';

class CategoryScreen extends StatelessWidget {
  final String category;
  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFF3F6FD),
      child: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  Text(
                    category,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                  Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        color: Color(0xFFF3F6FD),
                        intensity: 1),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(CupertinoIcons.cart_fill),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(20),
                      ),
                      color: Color(0xFFF3f6FD),
                      intensity: 1),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                    child: Row(
                      children: [
                        Icon(Icons.sort),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Sort",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
                Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(20),
                      ),
                      color: Color(0xFFF3f6FD),
                      intensity: 1),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                    child: Row(
                      children: [
                        Icon(Icons.filter_list),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Filter",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio:
                      (MediaQuery.of(context).size.width - 15 - 10) / (2 * 250),
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 5),
              itemBuilder: (context, index) {
                if (index % 2 == 0) {
                  return CatProductCard(PIndex: index,);
                }
                return OverflowBox(
                  maxHeight: 250 + 70,
                  child: Container(
                    margin: EdgeInsets.only(top: 70),
                    child: CatProductCard(PIndex: index,),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
