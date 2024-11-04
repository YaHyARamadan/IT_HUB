import 'package:batu_nw/core/style/my_text_style.dart';
import 'package:batu_nw/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController idController = TextEditingController();
    final TextEditingController passWordController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    var mediaHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                      "assets/img/auth_screen/Mobile login-rafiki (1) 1.png",scale: 1.3),
                  CustomText(
                      text: "Login", style: MyTextStyle.konkhmer40Size400Weight),
                  CustomTextForm(
                    title: 'Enter Your ID',
                    hint: 'Enter Your ID',
                    textEditingController: idController,
                    textInputType: TextInputType.number,
                  ),
                  SizedBox(height: mediaHeight * 0.01),
                  CustomTextForm(
                    title: 'Enter Password',
                    hint: 'Enter Your Password',
                    textEditingController: passWordController,
                    textInputType: TextInputType.number,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: CustomText(
                          text: "Forget Password",
                          style: MyTextStyle.konkhmer40Size400Weight
                              .copyWith(fontSize: 14, color: Colors.grey)),
                    ),
                  ),
                  SizedBox(height: mediaHeight * 0.01),
                  ElevatedButton(
                      onPressed: () {
                        if(formKey.currentState!.validate()){

                        }
                      },
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
                  SizedBox(height: mediaHeight * 0.01),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
