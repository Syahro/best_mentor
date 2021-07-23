import 'package:best_mentor/theme.dart';
import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final String imageUrl;

  SocialIcon({
    this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: purpleColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Image.asset(
          imageUrl,
          width: 18,
          height: 18,
        ),
      ),
    );
  }
}
