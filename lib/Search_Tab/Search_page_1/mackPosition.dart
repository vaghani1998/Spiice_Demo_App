import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spiice_app/Const/colors.dart';

import 'mackproposition.dart';

class MackPosition extends StatefulWidget {
  const MackPosition({Key? key}) : super(key: key);

  @override
  State<MackPosition> createState() => _MackPositionState();
}

class _MackPositionState extends State<MackPosition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundSignup,
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: backgroundSignup,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: hintText,
              ),
            ),
            SizedBox(
              width: 4.w,
            ),
            Text(
              'Back',
              style: TextStyle(
                color: hintText,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ClickEvent(),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Posted 3 days ago',
              style: TextStyle(
                color: hintText,
                fontSize: 13.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.h),
              child: Text(
                'Create an application',
                style: TextStyle(
                  color: text,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              height: 182.h,
              width: 325.w,
              margin: EdgeInsets.only(top: 14.h),
              child: FittedBox(
                child: Text(
                  'We are a young startup from Paris looking\nfor a designer who can help us design a\ntech oriented application. We are open to\nproposals. \nYou can saw our project here: \nhttp://www.zotware.com. \nWe are working with Figma and Photoshop.',
                  style: TextStyle(
                    color: hintText,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 8,
                ),
              ),
            ),
            SizedBox(
              height: 27.h,
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
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MackProposition(),
                    ));
              },
              child: Container(
                margin: EdgeInsets.only(top: 112.h, left: 32.w),
                height: 54.h,
                width: 263.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60.r),
                  color: button,
                ),
                child: Center(
                  child: Text(
                    'Make a proposition',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: buttonText,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ClickEvent extends StatefulWidget {
  const ClickEvent({Key? key}) : super(key: key);

  @override
  State<ClickEvent> createState() => _ClickEventState();
}

class _ClickEventState extends State<ClickEvent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48.h,
          width: 48.w,
          margin: EdgeInsets.only(right: 8.w),
          child: const CircleAvatar(
            backgroundColor: hintText,
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
    );
  }
}
