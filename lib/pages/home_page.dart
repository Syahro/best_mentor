import 'package:best_mentor/theme.dart';
import 'package:best_mentor/widget/category_card.dart';
import 'package:best_mentor/widget/floating_button.dart';
import 'package:best_mentor/widget/mentor_tips.dart';
import 'package:best_mentor/widget/top_mentor_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: purpleColor,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(
                defaultMargin,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/profile1.png',
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning,',
                            style: subTitleTextStyle.copyWith(
                              fontSize: 12,
                              color: lightGreyColor.withOpacity(0.6),
                            ),
                          ),
                          Text(
                            'Bimo Semesta',
                            style: whiteTitleTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/notification.png',
                        width: 18,
                        height: 19,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                SizedBox(
                  height: 110,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      defaultMargin,
                      defaultMargin,
                      0,
                      defaultMargin,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            right: defaultMargin,
                          ),
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: lightGreyColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Find your favorite mentor',
                                  style: subTitleTextStyle.copyWith(
                                    fontSize: 14,
                                    color: lightPurpleColor,
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: orangeColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.search,
                                      color: whiteColor,
                                      size: 28,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              CategoryCard(
                                titleJob: 'UI Designer',
                                widhtCard: 77.0,
                                isActive: true,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              CategoryCard(
                                titleJob: 'Product Designer',
                                widhtCard: 106.0,
                                isActive: false,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              CategoryCard(
                                titleJob: 'Development',
                                widhtCard: 88.0,
                                isActive: false,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              CategoryCard(
                                titleJob: 'UX Designer',
                                widhtCard: 76.0,
                                isActive: false,
                              ),
                              SizedBox(
                                width: defaultMargin,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: defaultMargin,
                        ),
                        Text(
                          'Top Mentor',
                          style: blackTitleTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              TopMentorCard(
                                imageUrl: 'assets/profile2.png',
                                name: 'Braun Marz',
                                jobTitle: 'UI/UX Designer, Google',
                                reviewFollower: '9 Reviews',
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              TopMentorCard(
                                imageUrl: 'assets/profile3.png',
                                name: 'Uden Yeager',
                                jobTitle: 'UI Designer, Gojek',
                                reviewFollower: '2 Reviews',
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              TopMentorCard(
                                imageUrl: 'assets/profile4.png',
                                name: 'Mira Yokz',
                                jobTitle: 'UI Designer, Facebook',
                                reviewFollower: '96,3K Followers',
                              ),
                              SizedBox(
                                width: defaultMargin,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: defaultMargin,
                        ),
                        Text(
                          'Mentor Tips',
                          style: blackTitleTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              MentorTips(
                                imageUrl: 'assets/tips1.png',
                                title: 'How to speak fluently with\nstrangers',
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              MentorTips(
                                imageUrl: 'assets/tips2.png',
                                title:
                                    'How to do the right presentation\nactivity',
                              ),
                              SizedBox(
                                width: defaultMargin,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
