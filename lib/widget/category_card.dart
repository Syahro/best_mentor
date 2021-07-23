import 'package:best_mentor/theme.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String titleJob;
  final double widhtCard;
  final bool isActive;

  CategoryCard({
    this.titleJob,
    this.widhtCard,
    this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: widhtCard,
      decoration: BoxDecoration(
        color: isActive ? orangeColor : whiteColor,
        borderRadius: BorderRadius.circular(8),
        border: isActive
            ? Border.all(
                width: 0,
                color: orangeColor,
              )
            : Border.all(
                width: 1,
                color: lightGreyColor,
              ),
      ),
      child: Center(
        child: Text(
          titleJob,
          style: subTitleTextStyle.copyWith(
            fontSize: 10,
            color: isActive ? whiteColor.withOpacity(0.8) : lightPurpleColor,
          ),
        ),
      ),
    );
  }
}
