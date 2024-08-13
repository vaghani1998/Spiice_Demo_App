import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spiice_app/Const/colors.dart';

import 'francisco.dart';

class SendYourWorks extends StatefulWidget {
  const SendYourWorks({Key? key}) : super(key: key);

  @override
  State<SendYourWorks> createState() => _SendYourWorksState();
}

class _SendYourWorksState extends State<SendYourWorks> {
  TextEditingController userInput = TextEditingController();
  TextEditingController search = TextEditingController();

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
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8.h,
              ),
              const Francisco(),
              Container(
                margin: EdgeInsets.only(top: 48.h, left: 16.w, right: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Send your work',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: text,
                          fontSize: 25.sp,
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 16.h),
                      height: 160.h,
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
                      margin: EdgeInsets.only(top: 24.h),
                      width: 343.w,
                      height: 56.h,
                      padding: EdgeInsets.only(left: 16.w, right: 16.w),
                      decoration: BoxDecoration(
                        color: boxInside,
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Upload file',
                              style: TextStyle(
                                color: hintText,
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                              )),
                          const Icon(
                            Icons.file_upload_outlined,
                            color: hintText,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.h),
                      width: 343.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                        color: boxInside,
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: TextFormField(
                        controller: search,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: hintText,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                              onPressed: search.clear,
                              icon: const Icon(
                                Icons.cancel_outlined,
                                color: hintText,
                              )),
                          contentPadding:
                              EdgeInsets.only(top: 16.h, left: 15.w),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 86.h, left: 32.w),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
