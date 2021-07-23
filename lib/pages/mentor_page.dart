import 'package:best_mentor/theme.dart';
import 'package:best_mentor/widget/experience_card.dart';
import 'package:best_mentor/widget/portofolio_card.dart';
import 'package:best_mentor/widget/social_icon.dart';
import 'package:best_mentor/widget/tab_page.dart';
import 'package:flutter/material.dart';

class MentorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(defaultMargin + 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.chevron_left,
                    color: whiteColor,
                    size: 28,
                  ),
                  Image.asset(
                    'assets/menu.png',
                    width: 18,
                    height: 14,
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 95),
                      child: Container(
                        width: double.infinity,
                        // height: 900,
                        decoration: BoxDecoration(
                          color: lightGreyColor,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 0),
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: defaultMargin + 13),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TabPage(
                                    tabName: 'My Experience (2)',
                                    isActive: true,
                                  ),
                                  TabPage(
                                    tabName: 'My Reviews (9)',
                                    isActive: false,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(defaultMargin),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Experience',
                                          style: subTitleTextStyle.copyWith(
                                            fontSize: 16,
                                            color: blackColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        ExperienceCard(
                                          imageUrl: 'assets/google.png',
                                          company: 'Google',
                                          jobTitle: 'UI/UX Lead',
                                          experienceTime: '3 Months',
                                          size: 30.0,
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        ExperienceCard(
                                          imageUrl: 'assets/gojek.png',
                                          company: 'Gojek Indonesia',
                                          jobTitle: 'Product Designer',
                                          experienceTime: '4 Years',
                                          size: 50.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: defaultMargin,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'My Portofolio',
                                          style: subTitleTextStyle.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              PortofolioCard(
                                                imageUrl: 'assets/porto1.png',
                                              ),
                                              SizedBox(
                                                width: 12,
                                              ),
                                              PortofolioCard(
                                                imageUrl: 'assets/porto2.png',
                                              ),
                                              SizedBox(
                                                width: 12,
                                              ),
                                              PortofolioCard(
                                                imageUrl: 'assets/porto3.png',
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 45),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                'assets/profile2.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Braun Marz',
                              style: blackTitleTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'UI/UX Designer, Google',
                              style: subTitleTextStyle.copyWith(
                                fontSize: 14,
                                color: lightPurpleColor,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SocialIcon(
                                  imageUrl: 'assets/browser.png',
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                SocialIcon(
                                  imageUrl: 'assets/linkedin.png',
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                SocialIcon(
                                  imageUrl: 'assets/twitter.png',
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                SocialIcon(
                                  imageUrl: 'assets/youtube.png',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 23,
                            ),
                            Container(
                              height: 40,
                              width: 140,
                              decoration: BoxDecoration(
                                color: orangeColor,
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Center(
                                child: Text(
                                  'Hire Me',
                                  style: subTitleTextStyle.copyWith(
                                    fontSize: 14,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
