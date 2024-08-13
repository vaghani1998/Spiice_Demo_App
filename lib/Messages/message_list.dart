import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spiice_app/Const/colors.dart';
import 'Chating_Model/model.dart';
import 'chatepage.dart';

class MessageList extends StatefulWidget {
  const MessageList({Key? key}) : super(key: key);

  @override
  State<MessageList> createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundSignup,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 52.h,
            margin: EdgeInsets.only(left: 16.w, top: 56.h, bottom: 16.h),
            child: Text(
              'Messages',
              style: TextStyle(
                color: Colors.black,
                fontSize: 39.sp,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ChangeIndex(message: data[index],);
              },
            ),
          ),
        ],
      ),
    );
  }

  List<String> userData = [
    '{"name": "Alex Marchal", "tital": "I have some questions about..."}',
    '{"name": "Norma Wilson", "tital": "http://www.warephase.com"}',
    '{"name": "Morris Murphy", "tital": "Hope it will work in the week..."}',
    '{"name": "Kylie Lane", "tital": "Thank you! It really shine with..."}',
    '{"name": "Ted Steward", "tital": "Yes I know"}',
    '{"name": "Wade Mccoy", "tital": "It will be online in 2 days"}'
  ];

  List<Message> data = [];

  @override
  void initState() {
    for (var element in userData) {
      data.add(messageFromJson(element));
    }
    super.initState();
  }
}

class ChangeIndex extends StatefulWidget {
  const ChangeIndex({Key? key, required this.message}) : super(key: key);
  final Message message;
  @override
  State<ChangeIndex> createState() => _ChangeIndexState();
}

class _ChangeIndexState extends State<ChangeIndex> {
  int changeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CallingPage(),
            ));
        setState(() {
          changeIndex = 0;
        });
      },
      child: Container(
        height: 103.h,
        width: double.infinity,
        color: changeIndex == 0 ? backgroundScreen : Colors.pinkAccent,
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 55.h,
              width: 55.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 26.h,
                  margin: EdgeInsets.only(bottom: 5.h),
                  child: Text(
                    widget.message.name,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                  width: 170.w,
                  child: Text(
                    widget.message.tital,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: hintText,
                    ),
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: hintText,
                )),
          ],
        ),
      ),
    );
  }
}
