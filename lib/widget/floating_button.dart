import 'package:best_mentor/theme.dart';
import 'package:best_mentor/widget/icon_navbottom.dart';
import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: lightGreyColor,
            blurRadius: 10,
            spreadRadius: 7,
            offset: Offset(0, -1),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          defaultMargin,
          defaultMargin - 3,
          defaultMargin,
          defaultMargin - 3,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconNavbottom(
              icon: 1,
              isActive: true,
            ),
            IconNavbottom(
              icon: 2,
              isActive: false,
            ),
            IconNavbottom(
              icon: 3,
              isActive: false,
            ),
            IconNavbottom(
              icon: 4,
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}
