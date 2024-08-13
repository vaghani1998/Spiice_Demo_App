import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spiice_app/Const/colors.dart';
import 'package:spiice_app/Francisco%20Fisher/francisco.dart';

import '../chart.dart';
import 'homepage.dart';

class HomeData extends StatefulWidget {
  const HomeData({Key? key}) : super(key: key);

  @override
  State<HomeData> createState() => _HomeDataState();
}

class _HomeDataState extends State<HomeData> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 52.h,
          width: 94.w,
          margin: EdgeInsets.only(left: 16.w, top: 52.h),
          child: Text(
            'Feed',
            style: TextStyle(
              color: Colors.black,
              fontSize: 39.sp,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Container(
          height: 33.h,
          width: 96.w,
          margin: EdgeInsets.only(left: 16.w, top: 8.h, bottom: 8.h),
          child: Text(
            'Resume',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // const Barchart(),
        const Expanded(child: ChartWidget()),
        const ActiveProject(),
        ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: 2,
          padding: EdgeInsets.only(right: 8.w, left: 8.w, bottom: 16.h),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 102.h,
                  width: 359.w,
                  margin: EdgeInsets.only(top: 16.h),
                  padding: EdgeInsets.only(left: 24.h, right: 24.h),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.r)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Wireframes',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FranciscoFisher()));
                            },
                            child: Text('Francisco Fisher',
                                style: TextStyle(
                                  color: hintText,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                          Text('Active',
                              style: TextStyle(
                                color: hintText,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
