import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spiice_app/Const/colors.dart';
import 'package:spiice_app/Profile_User/Model_Class/rating.dart';

class AverageRating extends StatefulWidget {
  const AverageRating({Key? key}) : super(key: key);

  @override
  State<AverageRating> createState() => _AverageRatingState();
}

class _AverageRatingState extends State<AverageRating> {
  List<String> list = [
    '{"name" : "Kyle Wilson","Discripation" : "Awesome job!"}',
    '{"name" : "Rosemary Copler","Discripation" : "Alex is a very great designer, having a lot of positive energy with him!"}',
    '{"name" : "Soham Pena","Discripation" : "Awesome job!"}',
    '{"name" : "Calvin Watson","Discripation" : "Awesome job!"}',
    '{"name" : "Dhrumil Vaghani","Discripation" : "Awesome job!"}',
    '{"name" : "Preet Zalavadiya","Discripation" : "Awesome job!"}'
  ];

  List rate = [];

  @override
  void initState() {
    for (var element in list) {
      rate.add(ratingFromJson(element));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundSignup,
        appBar: AppBar(
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
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: ListView.separated(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 343.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(rate[index].name,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20.sp,
                              )),
                          Text('05/03/2020',
                              style: TextStyle(
                                color: hintText,
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                              )),
                        ],
                      ),
                      Container(
                        width: 326.w,
                        margin: EdgeInsets.symmetric(vertical: 8.h),
                        child: Text(rate[index].discripation,
                            style: TextStyle(
                              color: hintText,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                            )),
                      ),
                      SizedBox(
                        height: 40.h,
                        width: 110.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rating',
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
                              itemBuilder: (context, _) => const Icon(
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
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 40.h,
                );
              },
              itemCount: rate.length),
        ));
  }
}
