import 'package:flutter/material.dart';
import 'package:personal_finance/common/widgets/social_button.dart';
import 'package:personal_finance/view/login/sign_up_view.dart';

import '../../common/color_extension.dart';
import '../../common/widgets/secondary_button.dart';

class SocialLoginView extends StatefulWidget {
  const SocialLoginView({super.key});

  @override
  State<SocialLoginView> createState() => _SocialLoginViewState();
}

class _SocialLoginViewState extends State<SocialLoginView> {
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
              SocialButton(
                  onPressed: () {},
                  shadowColor: Colors.white,
                  titleColor: TColor.gray,
                  titleIconColor: TColor.gray,
                  iconSocial: 'assets/images/google.png',
                  title: 'Sign in with Google',
                  assetButtonSocialIcon: 'assets/images/google_btn.png'),
              const SizedBox(
                height: 25,
              ),
              SocialButton(
                  onPressed: () {},
                  shadowColor: Colors.blue,
                  iconSocial: 'assets/images/fb.png',
                  title: 'Sign in with Facebook',
                  assetButtonSocialIcon: 'assets/images/fb_btn.png'),
              const SizedBox(
                height: 40,
              ),
              Text('or',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.primaryText, fontSize: 14)),
              const SizedBox(
                height: 40,
              ),
              SecondaryButton(
                  title: "Sign up with E-mail",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SignUpView();
                    }));
                  }),
              const SizedBox(
                height: 20,
              ),
              Text(
                  'By registering, you agree to our Terms of Use. Learn how we collect, use and share your data.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.secondaryText, fontSize: 14)),
            ],
          ),
        ),
      ),
    );
  }
}
