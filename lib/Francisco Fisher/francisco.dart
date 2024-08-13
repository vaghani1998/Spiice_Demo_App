import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spiice_app/Const/colors.dart';
import 'package:spiice_app/Francisco%20Fisher/sendyourworks.dart';

class FranciscoFisher extends StatefulWidget {
  const FranciscoFisher({Key? key}) : super(key: key);

  @override
  State<FranciscoFisher> createState() => _FranciscoFisherState();
}

class _FranciscoFisherState extends State<FranciscoFisher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundSignup,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.h),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: backgroundSignup,
          elevation: 0.0,
          title: Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back, color: hintText)),
              SizedBox(
                width: 8.w,
              ),
              Text('Back',
                  style: TextStyle(
                    color: hintText,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                  )),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 82.h,
            width: double.infinity,
            color: button,
            margin: EdgeInsets.only(top: 32.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You are in charge of this project',
                    style: TextStyle(
                      color: backgroundScreen,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(
                  height: 4.h,
                ),
                Text('Deadline 28/03/2020',
                    style: TextStyle(
                      color: backgroundScreen,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          const Francisco(),
          Container(
            margin: EdgeInsets.only(left: 16.w, top: 24.h, right: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Posted 8 days ago',
                    style: TextStyle(
                      fontSize: 12.8.sp,
                      fontWeight: FontWeight.w300,
                      color: hintText,
                    )),
                SizedBox(
                  height: 4.h,
                ),
                Text('Wireframes',
                    style: TextStyle(
                      color: text,
                      fontWeight: FontWeight.w700,
                      fontSize: 25.sp,
                    )),
                Container(
                  margin: EdgeInsets.only(top: 22.h),
                  height: 130.h,
                  width: 325.w,
                  child: Text(
                    'I need a designer for my new website.\nThe project is just at the beginning and I\nneed wireframes before I start coding the\nwebsite. I only want wireframes and I don’t\nwant prototype or UI design.',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: hintText,
                    ),
                    maxLines: 5,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 24.h,
                      width: 89.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: hintText),
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Center(
                        child: Text('WIREFRAME',
                            style: TextStyle(
                              color: hintText,
                              fontWeight: FontWeight.w300,
                              fontSize: 12.8.sp,
                            )),
                      ),
                    ),
                    Text('\$600',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: hintText,
                        )),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SendYourWorks(),
                  ));
            },
            child: Container(
              margin: EdgeInsets.only(top: 97.h, left: 56.w),
              height: 54.h,
              width: 263.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60.r),
                color: button,
              ),
              child: Center(
                child: Text(
                  'Send your work',
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
    );
  }
}

class Francisco extends StatefulWidget {
  const Francisco({Key? key}) : super(key: key);

  @override
  State<Francisco> createState() => _FranciscoState();
}

class _FranciscoState extends State<Francisco> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48.h,
          width: 48.w,
          margin: EdgeInsets.only(left: 16.w, right: 8.w),
          child: const CircleAvatar(
            backgroundColor: hintText,
          ),
        ),
        SizedBox(
          height: 33.h,
          child: Text('Francisco Fisher',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.sp,
                fontWeight: FontWeight.w700,
              )),
        ),
      ],
    );
  }
}
