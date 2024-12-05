import 'package:flutter/material.dart';
import 'package:personal_finance/common/widgets/primary_button.dart';
import 'package:personal_finance/common/widgets/round_textfield.dart';
import 'package:personal_finance/view/login/sign_up_view.dart';

import '../../common/color_extension.dart';
import '../../common/widgets/secondary_button.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  bool isRemember = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.gray80,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/app_logo.png',
                width: media.width * 0.5,
                fit: BoxFit.contain,
              ),
              const Spacer(),
              RoundTextField(
                label: 'E-mail address',
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 15,
              ),
              RoundTextField(
                label: 'Password',
                controller: txtPassword,
                obscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isRemember = !isRemember;
                      });
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          isRemember
                              ? Icons.check_box_rounded
                              : Icons.check_box_outline_blank_rounded,
                          size: 25,
                          color: TColor.gray50,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text('Remember me',
                            style: TextStyle(
                                color: TColor.secondaryText, fontSize: 16)),
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('Forgot password',
                          style: TextStyle(
                              color: TColor.secondaryText, fontSize: 16))),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              PrimaryButton(title: 'Login', onPressed: () {}),
              const Spacer(),
              Text('If you don\'t have an account yet?',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.primaryText, fontSize: 14)),
              const SizedBox(
                height: 25,
              ),
              SecondaryButton(
                  title: "Sign up",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SignUpView();
                    }));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
