import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return ScreenUtilInit(
      builder: () => MaterialApp(
        title: 'Flutter Screenutil',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme:
                GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme)),
        home: const MyHomePage(),
      ),
      designSize: const Size(360, 640),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  final purpleColor = const Color(0xff6688ff);
  final darkTextColor = const Color(0xff1f1a3d);
  final lightTextColor = const Color(0xff999999);
  final textFieldColor = const Color(0xfff5f6fa);
  final borderColor = const Color(0xffd9d9d9);

  Widget getTextField({required String hint}) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide:
                  const BorderSide(color: Colors.transparent, width: 0)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide:
                  const BorderSide(color: Colors.transparent, width: 0)),
          filled: true,
          fillColor: textFieldColor,
          hintText: hint,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          hintStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 52.h),
              Text(
                'Sign Up to Choppy',
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: darkTextColor),
              ),
              SizedBox(
                height: 4.h,
              ),
              Wrap(
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: lightTextColor),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: purpleColor),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              getTextField(hint: 'Full Name'),
              SizedBox(
                height: 16.h,
              ),
              getTextField(hint: 'Email address'),
              SizedBox(
                height: 16.h,
              ),
              getTextField(hint: 'Password'),
              SizedBox(
                height: 16.h,
              ),
              getTextField(hint: 'Confirm password'),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(purpleColor),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 14.h)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w700))),
                    child: const Text('Create Account')),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  const Expanded(child: Divider()),
                  SizedBox(
                    width: 16.w,
                  ),
                  Text(
                    'or sign up via',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: lightTextColor),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  const Expanded(child: Divider()),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            BorderSide(color: borderColor)),
                        foregroundColor:
                            MaterialStateProperty.all(darkTextColor),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 14.h)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w700))),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/images/google.png",
                          width: 20.w,
                          height: 20.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Text('Google'),
                      ],
                    )),
              ),
              SizedBox(
                height: 16.h,
              ),
              Wrap(
                // direction: Axis.vertical,
                children: [
                  Text(
                    'By signing up to Choppy you aggre to our ',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: lightTextColor),
                  ),
                  Text(
                    'terms and conditions',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: purpleColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
