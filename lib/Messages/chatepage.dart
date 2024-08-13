import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spiice_app/Const/colors.dart';
import 'package:spiice_app/Messages/Chating_Model/model.dart';

class CallingPage extends StatefulWidget {
  const CallingPage({Key? key}) : super(key: key);

  @override
  State<CallingPage> createState() => _CallingPageState();
}

class _CallingPageState extends State<CallingPage> {
  List<ChatMessage> messages = [
    ChatMessage(
        messageContent:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem cras ornare commodo imperdiet egestas pharetra, suspendisse tristique. Tellus volutpat unfortunately. Is it possible to send me the documents? Thank you very much.",
        messageType: "sender"),
    ChatMessage(
        messageContent:
            "No problem Dustin, I send you the documents when I arrived at my office!",
        messageType: "receiver"),
    ChatMessage(
        messageContent:
            "I have received your documents. Maybe we can try another color for the homepage, I’m already working on a proposal. Also I saw that the wording has a lot of spelling mistakes, I correct everything that I see. I send you everything tommorrow.",
        messageType: "sender"),
    ChatMessage(
        messageContent:
            "Nice! Sorry for the spelling mistakes, the text was pretty old.",
        messageType: "receiver"),
    ChatMessage(
        messageContent:
            "I have received your documents. Maybe we can try another color for the homepage, I’m already working on a proposal. Also I saw that the wording has a lot of spelling mistakes, I correct everything that I see. I send you everything tommorrow.",
        messageType: "sender"),
    ChatMessage(
        messageContent:
            "Nice! Sorry for the spelling mistakes, the text was pretty old.",
        messageType: "receiver"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: backgroundSignup,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110.h),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Column(
            children: [
              Row(
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
              Row(
                children: [
                  Container(
                    height: 24.h,
                    width: 24.w,
                    margin: EdgeInsets.only(right: 8.w),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: backgroundSignup),
                  ),
                  Text(
                    'Alex Marchal',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 25.sp,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(
                      Icons.call,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 16.h, bottom: 16.h),
        physics: const ScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 24.h),
            child: Align(
              alignment: (messages[index].messageType == "receiver"
                  ? Alignment.topLeft
                  : Alignment.topRight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: messages[index].messageType == "receiver"
                        ? 78.h
                        : 228.h,
                    width: messages[index].messageType == "receiver"
                        ? 181.w
                        : 181.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: (messages[index].messageType == "receiver"
                          ? receiver
                          : send),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Center(
                      child: Text(
                        messages[index].messageContent,
                        maxLines:
                            messages[index].messageType == 'receiver' ? 3 : 11,
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  if(messages[index].messageType == "sender")
                  Container(
                    height: 15.h,
                    width: 76.w,
                    color: Colors.yellowAccent,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

