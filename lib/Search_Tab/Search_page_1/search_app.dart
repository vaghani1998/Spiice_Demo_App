import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spiice_app/Const/colors.dart';

import 'mackPosition.dart';

class SearchApplication extends StatefulWidget {
  const SearchApplication({Key? key}) : super(key: key);

  @override
  State<SearchApplication> createState() => _SearchApplicationState();
}

class _SearchApplicationState extends State<SearchApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundSignup,
      body: Wrap(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 52.h,
                      width: 133.w,
                      margin: EdgeInsets.only(top: 56.h),
                      child: Text('Search',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 39.sp,
                          )),
                    ),
                    Container(
                      height: 45.h,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 24.h),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: hintText,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.h),
                          border: InputBorder.none,
                          suffixIcon: SvgPicture.asset(
                              'assets/Home_icons/Search icon.svg',
                              fit: BoxFit.scaleDown),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 33.h),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.filter_list_sharp,
                            color: hintText,
                          ),
                          SizedBox(
                            width: 8.h,
                          ),
                          Text(
                            'Filter',
                            style: TextStyle(
                              color: hintText,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 429.h,
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 33.h, left: 8.w, right: 8.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 74.w,
                      decoration: BoxDecoration(
                        color: continer,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8.r),
                            topLeft: Radius.circular(8.r)),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MackPosition(),
                              ));
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 29.h,
                              width: 29.w,
                              margin: EdgeInsets.only(left: 16.w, right: 8.w),
                              child: const CircleAvatar(
                                backgroundColor: round,
                              ),
                            ),
                            Text(
                              'Arlene Mckinney',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20.sp,
                                color: text,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Posted 3 days ago',
                            style: TextStyle(
                              color: hintText,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Text(
                            'Create an application',
                            style: TextStyle(
                              color: text,
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Text(
                            'Description',
                            style: TextStyle(
                              color: text,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            height: 104.h,
                            width: 324.w,
                            margin: EdgeInsets.only(top: 8.h, bottom: 16.h),
                            child: FittedBox(
                              child: Text(
                                'We are a young startup from Paris looking\nfor a designer who can help us design a\ntech oriented application. We are open to\nproposals.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp,
                                  color: hintText,
                                ),
                                maxLines: 5,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '16 propositions',
                                style: TextStyle(
                                  color: hintText,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                '\$ 2400',
                                style: TextStyle(
                                  color: button,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 24.h,
                                width: 47.w,
                                margin: EdgeInsets.only(right: 8.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.r),
                                  border: Border.all(color: hintText),
                                ),
                                child: Center(
                                  child: Text('UX/UI',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13.sp,
                                        color: hintText,
                                      )),
                                ),
                              ),
                              Container(
                                height: 24.h,
                                width: 60.w,
                                margin: EdgeInsets.only(right: 8.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.r),
                                  border: Border.all(color: hintText),
                                ),
                                child: Center(
                                  child: Text('DESIGN',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13.sp,
                                        color: hintText,
                                      )),
                                ),
                              ),
                              Container(
                                height: 24.h,
                                width: 53.w,
                                margin: EdgeInsets.only(right: 8.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.r),
                                  border: Border.all(color: hintText),
                                ),
                                child: Center(
                                  child: Text('FIGMA',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13.sp,
                                        color: hintText,
                                      )),
                                ),
                              ),
                              Container(
                                height: 24.h,
                                width: 91.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.r),
                                  border: Border.all(color: hintText),
                                ),
                                child: Center(
                                  child: Text('PHOTOSHOP',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13.sp,
                                        color: hintText,
                                      )),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
