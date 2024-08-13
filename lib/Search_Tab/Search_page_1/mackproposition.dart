import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spiice_app/Const/colors.dart';

import 'mackPosition.dart';

class MackProposition extends StatefulWidget {
  const MackProposition({Key? key}) : super(key: key);

  @override
  State<MackProposition> createState() => _MackPropositionState();
}

class _MackPropositionState extends State<MackProposition> {
  TextEditingController userInput = TextEditingController();

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
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ClickEvent(),
            Container(
              height: 33.h,
              margin: EdgeInsets.only(top: 40.h),
              child: Text('Make a proposition',
                  style: TextStyle(
                    color: text,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.h),
              height: 240.h,
              width: 343.w,
              decoration: BoxDecoration(
                color: boxInside,
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: TextFormField(
                controller: userInput,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Message',
                  contentPadding: EdgeInsets.all(16.w),
                  hintStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: hintText,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 149.h, left: 32.w),
              height: 54.h,
              width: 263.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60.r),
                color: button,
              ),
              child: Center(
                child: Text(
                  'Send',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: buttonText,
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
