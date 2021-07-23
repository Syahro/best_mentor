import 'package:best_mentor/theme.dart';
import 'package:flutter/material.dart';

class IconNavbottom extends StatelessWidget {
  final int icon;
  final bool isActive;

  IconNavbottom({
    this.icon,
    this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              (icon == 1)
                  ? Icons.home
                  : (icon == 2)
                      ? Icons.bookmark
                      : (icon == 3)
                          ? Icons.chat
                          : Icons.account_circle,
              color: isActive ? purpleColor : Colors.grey.withOpacity(0.5),
              size: 30,
            ),
            SizedBox(
              width: 3,
            ),
            isActive
                ? Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Home',
                          style: whiteTitleTextStyle.copyWith(
                            fontSize: 14,
                            color: purpleColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          width: 35,
                          height: 2,
                          decoration: BoxDecoration(
                            color: purpleColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        )
                      ],
                    ),
                  )
                : Container(),
          ],
        ),
      ],
    );
  }
}
