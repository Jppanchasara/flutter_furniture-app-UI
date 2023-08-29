
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:furnitureapp/screens/product_screen.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8),
          child: SizedBox(
            width: 270,
            child: Stack(
              children: [
                SizedBox(
                  height: 320,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        color: Color(0xFFF3F6FD),
                        intensity: 1),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        onTap: () {
                          
                        },
                        child: Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductScreen(image: "images/Product ${index + 1}.png",)));
                          
                                
                              },
                              child: Image.asset(
                                "images/Product ${index + 1}.png",
                                height: 250,
                                width: 250,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              "Product Name",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "\$223",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                ,
                Padding(padding: EdgeInsets.only(right:30),child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFF35324C),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 4
                        )
                      ],
                      
                    ),
                    child: Icon(CupertinoIcons.cart_fill_badge_plus,color: Colors.white,size: 30,),
                  ),
                ),)

              ],
            ),
          ),
        );
      },
    );
  }
}
