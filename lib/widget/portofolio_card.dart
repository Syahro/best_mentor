import 'package:flutter/material.dart';

class PortofolioCard extends StatelessWidget {
  final String imageUrl;

  PortofolioCard({
    this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      width: 135,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(imageUrl),
    );
  }
}
