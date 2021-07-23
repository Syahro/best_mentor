import 'package:best_mentor/theme.dart';
import 'package:flutter/material.dart';

class TopMentorCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String jobTitle;
  final String reviewFollower;

  TopMentorCard({
    this.imageUrl,
    this.name,
    this.jobTitle,
    this.reviewFollower,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 194,
      width: 160,
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: lightGreyColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            name,
            style: blackTitleTextStyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            jobTitle,
            style: subTitleTextStyle.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: lightPurpleColor,
            ),
          ),
          SizedBox(
            height: 1,
          ),
          Text(
            reviewFollower,
            style: subTitleTextStyle.copyWith(
              fontSize: 12,
              color: lightPurpleColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: 140,
            decoration: BoxDecoration(
              color: orangeColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'Hire Me',
                style: whiteTitleTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
