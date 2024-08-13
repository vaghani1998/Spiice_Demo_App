import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spiice_app/Const/colors.dart';

class TotalGains extends StatefulWidget {
  const TotalGains({Key? key}) : super(key: key);

  @override
  State<TotalGains> createState() => _TotalGainsState();
}

class _TotalGainsState extends State<TotalGains> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundSignup,
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 16.h, top: 16.h, bottom: 16.h),
            child: Text(
              'DETAILS',
              style: TextStyle(
                color: hintText,
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ExpansionPanelList(
                    elevation: 0.0,
                    dividerColor: hintText,
                    expansionCallback: (index, isExpanded) {
                      setState(() {
                        _items[index]['isExpanded'] = !isExpanded;
                      });
                    },
                    animationDuration: const Duration(milliseconds: 600),
                    children: _items
                        .map(
                          (item) => ExpansionPanel(
                            canTapOnHeader: true,
                            backgroundColor: Colors.white,
                            headerBuilder: (_, isExpanded) => Container(
                                color: Colors.white,
                                height: 86.h,
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 16.h),
                                      color: Colors.white,
                                      child: Text(
                                        item['title'],
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w500,
                                            color: text),
                                      ),
                                    ),
                                    Text(
                                      '24 K',
                                      style: TextStyle(
                                        fontSize: 40.5.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                )),
                            body: Container(
                              height: 226.h,
                              width: double.infinity,
                              color: Colors.white,
                              child: Text(
                                item['description'],
                              ),
                            ),
                            isExpanded: item['isExpanded'],
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  final List<Map<String, dynamic>> _items = List.generate(
      4,
      (index) => {
            'id': index,
            'title': 'Total gains',
            'description':
                'This is the description of the item $index. There is nothing important here. In fact, it is meaningless.',
            'isExpanded': false,
            'Border': false,
          });
}
