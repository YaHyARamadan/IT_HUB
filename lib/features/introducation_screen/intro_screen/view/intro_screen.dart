import 'dart:async';

import 'package:batu_nw/features/introducation_screen/intro_screen/view/widget/bottom_wave_clipper.dart';
import 'package:batu_nw/features/introducation_screen/intro_screen/view/widget/dot_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/my_text_style.dart';
import '../../../../core/widgets/custom_text.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController pageController = PageController();

  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.sizeOf(context).width;
    var mediaHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ClipPath(
              clipper: BottomWaveClipper(),
              child: Container(
                color: const Color(0xff11A7A4),
                height: mediaHeight * 0.32,
                width: mediaWidth,
              ),
            ),
             SizedBox(height: mediaHeight * 0.01),
            SizedBox(
              width: mediaWidth,
              height: MediaQuery.sizeOf(context).height * 0.3,
              child: PageView(
                controller: pageController,
                children: [
                  Image.asset('assets/img/intro_img/Untitled-1 1.png',
                      scale: 0.74.sp),
                  Image.asset('assets/img/intro_img/vec2 1.png',
                      scale: 0.74.sp),
                  Image.asset("assets/img/intro_img/vec3 1.png", scale: 0.74.sp)
                ],
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
              ), 
            ),
            SizedBox(height: mediaHeight * 0.1),
            PageDot(pageIndex: _pageIndex),
            SizedBox(height: mediaHeight * 0.02),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(const Color(0xff11A7A4)),
                  padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 75, vertical: 8)),
                ),
                child: CustomText(
                          text: 'Login',
                          style: MyTextStyle.kanit24Size400Weight
                              .copyWith(color: Colors.white, fontSize: 28))),
            SizedBox(height: mediaHeight * 0.02),
            OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  side: WidgetStateProperty.all(
                      const BorderSide(color: Color(0xff11A7A4))),
                  padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 70, vertical: 10)),
                ),
                child: CustomText(
                    text: "Register",
                    style: MyTextStyle.lalezar24Size400Weight
                        .copyWith(color: const Color(0xff000000)))),
            SizedBox(height: mediaHeight * 0.02),

          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _pageIndex = 0;
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_pageIndex < 2) {
        _pageIndex++;
      } else {
        _pageIndex = 0;
        pageController.animateToPage(
          _pageIndex,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      }
      pageController.animateToPage(
        _pageIndex,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
