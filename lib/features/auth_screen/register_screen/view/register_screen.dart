import 'package:batu_nw/core/style/my_text_style.dart';
import 'package:batu_nw/core/widgets/custom_text.dart';
import 'package:batu_nw/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/routes/routes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.sizeOf(context).width;
    var mediaHeight = MediaQuery.sizeOf(context).height;
    TextEditingController test = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff11a7a4),
      body: SafeArea(
        child: SizedBox(
          height: mediaHeight,
          width: mediaWidth,
          child: Stack(
            children: [
              Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset("assets/img/auth_screen/Ellipse 5.png"),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: SvgPicture.asset(
                  "assets/img/auth_screen/Ellipse 6.svg",
                ),
              ),
              Positioned(
                top: 5,
                left: 20,
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xff81E2E0),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: 3,
                right: 70,
                child: Container(
                  alignment: Alignment.center,
                  width: 180,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Color(0xff81E2E0),
                    shape: BoxShape.circle,
                  ),
                  child: CustomText(
                    text: "R",
                    style: MyTextStyle.kanit24Size400Weight.copyWith(
                      fontSize: 120,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 40,
                child: SizedBox(
                  width: mediaWidth * 1,
                  height: mediaHeight * 1,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          buildTextField("USERNAME"),
                          buildTextField("ID"),
                          buildTextField("EMAIL"),
                          buildTextField("PASSWORD", obscureText: true),
                          buildTextField("YEAR"),
                          buildTextField("DEPARTMENT"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 100,
                right: 50,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(const Color(0xff26CCC9)),
                      padding: WidgetStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 8)),
                    ),
                    child: CustomText(
                        text: 'Register',
                        style: MyTextStyle.kanit24Size400Weight
                            .copyWith(color: Colors.white, fontSize: 28))),
              ),
              Positioned(
                bottom: 75,
                right: 75,
                child: Row(
                  children: [
                    CustomText(
                        text: "I Have Account  ",
                        style: MyTextStyle.konkhmer40Size400Weight.copyWith(
                            fontSize: 14, color: const Color(0xff26CCC9))),
                    InkWell(
                        child: CustomText(
                            text: "Login",
                            style: MyTextStyle.konkhmer40Size400Weight.copyWith(
                                fontSize: 14, fontWeight: FontWeight.w900)))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildTextField(String hint, {bool obscureText = false}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8, right: 14),
    child: TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: 'Enter Your $hint Here',
        hintStyle: MyTextStyle.konkhmer40Size400Weight
            .copyWith(fontSize: 14, color: const Color(0xff11A7A4)),
        contentPadding: const EdgeInsets.symmetric(vertical: 5),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.teal),
        ),
      ),
    ),
  );
  ;
}
