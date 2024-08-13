import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spiice_app/Const/colors.dart';
import 'package:spiice_app/Interface_Ui/Home_Page/home_data.dart';
import 'package:spiice_app/Interface_Ui/Home_Page/totalgains.dart';
import 'package:spiice_app/Interface_Ui/chart.dart';
import 'package:spiice_app/Messages/message_list.dart';
import 'package:spiice_app/Profile_User/profile_user.dart';
import 'package:spiice_app/Search_Tab/Search_page_1/search_app.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      backgroundColor: backgroundSignup,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const ChartWidget(),
      ),
      bottomSheet: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: (index) {
          pageChanged(index);
        },
        children: const [
          HomeData(),
          SearchApplication(),
          MessageList(),
          UserProfile(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 88.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(6.r), topRight: Radius.circular(6.r)),
        ),
        child: BottomNavigationBar(
          currentIndex: bottomSelectedIndex,
          onTap: (index) {
            bottomTapped(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                bottomSelectedIndex == 0
                    ? 'assets/Home_icons/Home icon.svg'
                    : 'assets/Home_icons/Bottom_bar_icons_blure/Home_1 icon.svg',
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(bottomSelectedIndex == 1
                  ? 'assets/Home_icons/Bottom_bar_icons_blure/Search_4 icon.svg'
                  : 'assets/Home_icons/Search icon.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(bottomSelectedIndex == 2
                  ? 'assets/Home_icons/Bottom_bar_icons_blure/Message_3 icon.svg'
                  : 'assets/Home_icons/Message icon.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(bottomSelectedIndex == 3
                  ? 'assets/Home_icons/Bottom_bar_icons_blure/Profile_2 icon.svg'
                  : 'assets/Home_icons/Profile icon.svg'),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  int bottomSelectedIndex = 0;

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    });
  }
}

class Barchart extends StatefulWidget {
  const Barchart({Key? key}) : super(key: key);

  @override
  State<Barchart> createState() => _BarchartState();
}

class _BarchartState extends State<Barchart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.h,
      width: MediaQuery.of(context).size.width,
      color: buttonText,
      child: Row(
        verticalDirection: VerticalDirection.down,
        children: [
          Container(
            height: 140.h,
            width: 32.w,
            margin: EdgeInsets.only(top: 100.h, left: 16.w),
            decoration: BoxDecoration(
              color: charIndicator,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.r),
                  topRight: Radius.circular(4.r)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60.h, left: 16.w),
            height: 180.h,
            width: 32.w,
            decoration: BoxDecoration(
              color: charIndicator,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.r),
                  topRight: Radius.circular(4.r)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25.h, left: 16.w),
            height: 215.h,
            width: 32.w,
            decoration: BoxDecoration(
              color: charIndicator,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.r),
                  topRight: Radius.circular(4.r)),
            ),
          ),
          Container(
            height: 170.h,
            width: 32.w,
            margin: EdgeInsets.only(top: 70.h, left: 16.w, right: 32.w),
            decoration: BoxDecoration(
              color: button,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.r),
                  topRight: Radius.circular(4.r)),
            ),
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TotalGains(),
                      ));
                },
                child: Container(
                  margin: EdgeInsets.only(
                    top: 55.h,
                  ),
                  child: Text(
                    'TOTAL GAINS',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        color: hintText),
                  ),
                ),
              ),
              Text(
                '27 k',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60.sp,
                    color: Colors.black),
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/Home_icons/down.svg'),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    '%18',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: hintText),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ActiveProject extends StatefulWidget {
  const ActiveProject({Key? key}) : super(key: key);

  @override
  State<ActiveProject> createState() => _ActiveProjectState();
}

class _ActiveProjectState extends State<ActiveProject> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 26.h, left: 16.w, right: 16.w, bottom: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Active Project',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.sp,
                  color: Colors.black)),
          Container(
            height: 34.h,
            width: 83.w,
            decoration: BoxDecoration(
              color: charIndicator,
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Center(
              child: Text('View all',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
