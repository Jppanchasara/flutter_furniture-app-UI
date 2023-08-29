// ignore_for_file: unnecessary_brace_in_string_interps, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CatProductCard extends StatelessWidget {
  final int PIndex;
  const CatProductCard({super.key, required this.PIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Neumorphic(
        style: NeumorphicStyle(
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(12),
            ),
            color: Color(0xFFF3f6FD),
            intensity: 1),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "images/Product ${PIndex + 1}.png",
                    height: 150,
                    width: 150,
                  ),
                ),
                SizedBox(
                  height: 16,
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
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            )),
      ),
    );
  }
}
