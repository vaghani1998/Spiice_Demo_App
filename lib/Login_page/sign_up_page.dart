// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spiice_app/Const/colors.dart';
import 'login.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundSignup,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 412.h,
              width: 343.w,
              decoration: BoxDecoration(
                color: charIndicator,
                borderRadius: BorderRadius.circular(8.r),
              ),
              margin: EdgeInsets.only(
                top: 88.h,
                left: 16.w,
                right: 16.w,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    'Sign-up',
                    style: TextStyle(
                      fontSize: 27.sp,
                      fontWeight: FontWeight.w500,
                      color: text,
                    ),
                  ),
                  Container(
                    height: 52.h,
                    width: 295.w,
                    margin: EdgeInsets.only(top: 32.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: boxInside,
                    ),
                    child: TextFormField(
                      controller: firstName,
                      onTap: () {},
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 16.w),
                        hintText: 'First name',
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
                    margin: EdgeInsets.only(top: 24.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: boxInside,
                    ),
                    child: TextFormField(
                      controller: lastName,
                      onTap: () {},
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 16.w),
                        hintText: 'Last name',
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
                    margin: EdgeInsets.only(top: 24.h),
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
                        hintText: 'Email',
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
                    margin: EdgeInsets.only(top: 24.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: boxInside,
                    ),
                    child: TextFormField(
                      controller: password,
                      obscureText: true,
                      onTap: () {},
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 16.w),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: hintText,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ));

                    try {
                      final credential = await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: email.text, password: password.text);
                      CollectionReference users =
                          FirebaseFirestore.instance.collection('Users');
                      users
                          .add({
                            'objectId': credential.user!.uid,
                            'email': email.text,
                            'password': password.text,
                          })
                          .then((value) => print("User Added"))
                          .catchError(
                              (error) => print("Failed to add user: $error"));
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        print('No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        print('Wrong password provided for that user.');
                      }
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 102.h),
                    height: 54.h,
                    width: 263.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.r),
                      color: Colors.brown,
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: buttonText,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 41.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'You have an account ? ',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: text,
                        ),
                      ),
                      Text(
                        'Log-in',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: text,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
