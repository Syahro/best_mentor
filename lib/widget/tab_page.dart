import 'package:best_mentor/theme.dart';
import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  final String tabName;
  final bool isActive;

  TabPage({
    this.tabName,
    this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tabName,
          style: subTitleTextStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: isActive ? purpleColor : lightPurpleColor.withOpacity(0.6),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: 50,
          height: 3,
          decoration: BoxDecoration(
            color: isActive ? purpleColor : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
