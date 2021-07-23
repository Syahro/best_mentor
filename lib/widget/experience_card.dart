import 'package:best_mentor/theme.dart';
import 'package:flutter/material.dart';

class ExperienceCard extends StatelessWidget {
  final String imageUrl;
  final String company;
  final String jobTitle;
  final String experienceTime;
  final double size;

  ExperienceCard({
    this.imageUrl,
    this.company,
    this.jobTitle,
    this.experienceTime,
    this.size
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(3),
            border: Border.all(color: lightGreyColor, width: 1),
          ),
          child: Center(
            child: Image.asset(
              imageUrl,
              width: size,
              height: size,
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              company,
              style: subTitleTextStyle.copyWith(
                fontSize: 12,
                color: lightPurpleColor.withOpacity(0.6),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              jobTitle,
              style: subTitleTextStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Spacer(),
        Text(
          experienceTime,
          style: subTitleTextStyle.copyWith(
            fontSize: 14,
            color: lightPurpleColor.withOpacity(0.6),
          ),
        )
      ],
    );
  }
}
