import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spiice_app/Const/colors.dart';

import 'average_rating.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  double value = 3.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundSignup,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 57.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 52.h,
              width: 129.w,
              margin: EdgeInsets.only(bottom: 24.h),
              child: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 39.sp,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Dustin Warren',
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      )),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text('UX Designer',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: hintText,
                      )),
                ],
              ),
            ),
            Container(
              height: 26.h,
              width: 110.w,
              margin: EdgeInsets.only(top: 28.h, bottom: 12.h),
              child: Center(
                child: Text('Description',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      color: Colors.black,
                    )),
              ),
            ),
            Container(
              height: 104.h,
              width: 325.w,
              margin: EdgeInsets.only(bottom: 32.h),
              child: FittedBox(
                child: Text(
                  'My name is Dustin, I’m a young designer\nfrom Dublin. I practice for 4 years now,\nworked with small and big agencies.\nBlablabla',
                  style: TextStyle(
                    color: hintText,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 4,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '64 reviews',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp,
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 40.h,
                  width: 110.w,
                  margin: EdgeInsets.only(top: 5.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Average rating',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 13.sp,
                          color: Colors.black,
                        ),
                      ),
                      RatingBar.builder(
                        itemSize: 20.h,
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemBuilder: (context, _) =>
                        const Icon(
                          Icons.star,
                          color: button,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
              width: 71.w,
              child: Text('Last review:',
                  style: TextStyle(
                    color: hintText,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    height: 45.h,
                    width: 103.w,
                    child: Center(
                      child: RichText(
                        maxLines: 2,
                        text: TextSpan(
                          text: 'Awesome job!\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(
                                text: '- Kyle Wilson',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 13.sp,
                                  color: Colors.black,
                                )),
                          ],
                        ),
                      ),
                    )),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => const AverageRating()));
                  },
                  child: Container(
                    height: 34.h,
                    width: 83.w,
                    margin: EdgeInsets.only(right: 12.w, bottom: 15.h),
                    decoration: BoxDecoration(
                      color: charIndicator,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Center(
                      child: Text('View all',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: Colors.black,
                          )),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 26.h,
              width: 88.w,
              margin: EdgeInsets.only(top: 32.h),
              child: FittedBox(
                child: Text('Portfolio',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
