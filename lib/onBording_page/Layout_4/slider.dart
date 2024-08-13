import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spiice_app/Const/colors.dart';
import 'package:spiice_app/Login_page/login.dart';

class ChangePage extends StatefulWidget {
  const ChangePage({Key? key}) : super(key: key);

  @override
  State<ChangePage> createState() => _ChangePageState();
}

class _ChangePageState extends State<ChangePage> {
  PageController pageController = PageController();
  double currentPage = 0;

  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!;
      });
    });
    super.initState();
  }

  List<Widget> listData = [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Spiice',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 32.sp,
              color: text,
            )),
        Container(
          height: 370.19.w,
          width: double.infinity,
          alignment: Alignment.center,
          child: Image.asset(
            'assets/OnBording_page/1.png',
            color: button,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 58.h,
          width: 252.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Find projects from companies',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: text,
                  )),
              Text('everywhere in the word',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: text,
                  )),
            ],
          ),
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Spiice',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 32.sp,
              color: text,
            )),
        SizedBox(
          height: 354.h,
          width: 276.w,
          child: Image.asset('assets/OnBording_page/2.png',
              color: button, fit: BoxFit.cover),
        ),
        SizedBox(
          height: 58.h,
          width: 226.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Make money while working',
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: text)),
              Text('on awesome projects',
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: text)),
            ],
          ),
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Spiice',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 32.sp,
              color: text,
            )),
        SizedBox(
            height: 320.h,
            width: 160.w,
            child: Image.asset(
              'assets/OnBording_page/3.png',
              color: button,
              fit: BoxFit.cover,
            )),
        SizedBox(
          height: 58.h,
          width: 238.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Chat with others freelancers',
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: text)),
              Text('and develop your network',
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: text)),
            ],
          ),
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Spiice',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 32.sp,
              color: text,
            )),
        Container(
            margin: EdgeInsets.only(bottom: 15.h),
            height: 432.h,
            width: 209.w,
            child: Image.asset(
              'assets/OnBording_page/4.png',
              color: button,
              fit: BoxFit.contain,
            )),
        Text('Work hard and level up!',
            style: TextStyle(
                fontSize: 18.sp, fontWeight: FontWeight.w400, color: text)),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Spiice',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 32.sp,
              color: text,
            )),
        Container(
            height: 311.h,
            width: 311.w,
            alignment: Alignment.center,
            child: Image.asset(
              'assets/OnBording_page/5.png',
              color: button,
              fit: BoxFit.cover,
            )),
        Text('Enjoy your progess!',
            style: TextStyle(
                fontSize: 18.sp, fontWeight: FontWeight.w400, color: text)),
        const Indicator(),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundSignup,
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            children: listData,
          ),
          Positioned(
              bottom: 72,
              left: 150,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  listData.length,
                      (index) =>
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 2.w),
                        child: InkWell(
                          onTap: () {
                            pageController.animateToPage(index,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor:
                            currentPage == index ? button : Colors.white30,
                          ),
                        ),
                      ),
                ),
              ))
        ],
      ),
    );
  }
}

class Indicator extends StatefulWidget {
  const Indicator({Key? key}) : super(key: key);

  @override
  State<Indicator> createState() => _IndicatorState();
}

class _IndicatorState extends State<Indicator> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Login(),
            ));
      },
      child: Container(
        height: 30.h,
        width: 70.w,
        margin: EdgeInsets.symmetric(vertical: 45.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(color: hintText),
        ),
        child: Center(
          child: Text('Login',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              )),
        ),
      ),
    );
  }
}
