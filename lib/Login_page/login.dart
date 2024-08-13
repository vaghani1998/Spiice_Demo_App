// ignore_for_file: avoid_print, use_build_context_synchronously, unused_local_variable, unused_import

import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:spiice_app/Interface_Ui/Home_Page/homepage.dart';
import 'package:spiice_app/Login_page/sign_up_page.dart';
import '../Const/colors.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    // dynamic loginApi(id, pass) async {
    //   try {
    //     Response response = await http.post(
    //         Uri.parse('https://reqres.in/api/login'),
    //         body: {"email": id, "password": pass});
    //     if (response.statusCode == 200) {
    //       final responseData = jsonEncode(response.body);
    //       print('res ${response.headers}');
    //       print('check data ${response.body}');
    //       print('object $responseData');
    //       Navigator.push(context,
    //           MaterialPageRoute(builder: (context) => const HomePageScreen()));
    //     } else {
    //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('wrong data show')));
    //     }
    //   } on Exception catch (e, j) {
    //     print('hello $e');
    //     print('world $j');
    //   }
    // }

    return Scaffold(
      backgroundColor: backgroundSignup,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 55.h, bottom: 10.h),
            child: Text('Spiice',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 96.sp,
                )),
          ),
          Column(
            children: [
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w500,
                  color: text,
                ),
              ),
              Container(
                height: 52.h,
                width: 295.w,
                margin: EdgeInsets.only(top: 25.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: boxInside,
                ),
                child: TextFormField(
                  controller: email,
                  onTap: () {},
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 16.w),
                    hintText: 'Enter email',
                    hintStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: hintText,
                    ),
                  ),
                ),
              ),
              Container(
                height: 52.h,
                width: 295.w,
                margin: EdgeInsets.only(top: 24.h, bottom: 30.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: boxInside,
                ),
                child: TextFormField(
                  controller: password,
                  obscureText: false,
                  onTap: () {},
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 16.w),
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: hintText,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  try {
                    final credential =
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: email.text,
                      password: password.text,
                    );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePageScreen(),
                        ));
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Login Success')));

                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      print('No user found for that email');
                    } else if (e.code == 'wrong-password') {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please Enter Your Correct Pass')));
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                // onTap: () {
                //   loginApi(email.text, password.text);
                // },
                child: Container(
                  height: 54.h,
                  width: 263.w,
                  decoration: BoxDecoration(
                    color: button,
                    borderRadius: BorderRadius.all(Radius.circular(33.w)),
                  ),
                  child: Center(
                      child: Text(
                    'Login',
                    style: TextStyle(
                      color: buttonText,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                    ),
                  )),
                ),
              ),
              SizedBox(
                height: 37.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You have an account ? ',
                    style: TextStyle(
                      color: text,
                      fontWeight: FontWeight.w400,
                      fontSize: 18.sp,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SingUpPage(),
                          ));
                    },
                    child: Text(
                      'Sing-up',
                      style: TextStyle(
                        color: text,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
