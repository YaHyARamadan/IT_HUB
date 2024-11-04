import 'package:batu_nw/core/style/my_text_style.dart';
import 'package:batu_nw/core/widgets/custom_text.dart';
import 'package:batu_nw/features/introducation_screen/intro_screen/view/intro_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const IntroScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff11A7A4),
      body: Stack(
        children: [
          Positioned(
              left: MediaQuery.sizeOf(context).width * 0,
              top: MediaQuery.sizeOf(context).height * -0.02,
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.5,
                height: MediaQuery.sizeOf(context).height * 0.3,
                child: Image.asset(
                  'assets/img/splash_screen/Vector 1.png',
                  scale: 0.5,
                ),
              )),
          Positioned(
              right: MediaQuery.sizeOf(context).width * -0.01,
              top: MediaQuery.sizeOf(context).height * -0.04,
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.5,
                height: MediaQuery.sizeOf(context).height * 0.3,
                child: Image.asset(
                  'assets/img/splash_screen/Vector 2@2x.png',
                  scale: 0.8,
                ),
              )),
          Positioned(
              right: MediaQuery.sizeOf(context).width * -0.01,
              bottom: MediaQuery.sizeOf(context).height * -0.02,
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.5,
                height: MediaQuery.sizeOf(context).height * 0.3,
                child: Image.asset(
                  'assets/img/splash_screen/Vector 3.png',
                  scale: 0.7,
                ),
              )),
          Positioned(
              left: MediaQuery.sizeOf(context).width * -0.0,
              bottom: MediaQuery.sizeOf(context).height * -0.04,
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.5,
                height: MediaQuery.sizeOf(context).height * 0.3,
                child: Image.asset(
                  'assets/img/splash_screen/Vector 4.png',
                  scale: 0.8,
                ),
              )),
          Positioned(
              top: MediaQuery.sizeOf(context).height * 0.44,
              left: MediaQuery.sizeOf(context).width * 0.27,
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.9,
                height: MediaQuery.sizeOf(context).height * 0.2,
                child:   CustomText(text: "IT HUB", style: MyTextStyle.kanit24Size400Weight.copyWith(fontSize: 64,color: Colors.white)),
                ),
              )
        ],
      ),
    );
  }
}