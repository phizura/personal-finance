import 'package:flutter/material.dart';
import 'package:personal_finance/common/color_extension.dart';
import 'package:personal_finance/common/widgets/primary_button.dart';
import 'package:personal_finance/common/widgets/secondary_button.dart';
import 'package:personal_finance/view/login/sign_in_view.dart';
import 'package:personal_finance/view/login/social_login_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Image.asset(
            'assets/images/welcome_screen.png',
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/app_logo.png',
                    width: media.width * 0.5,
                    fit: BoxFit.contain,
                  ),
                  const Spacer(),
                  Text('Aplikasi ini terinspirasi dari symu.co dan jcd.pl',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(color: TColor.primaryText, fontSize: 14)),
                  const SizedBox(
                    height: 30,
                  ),
                  PrimaryButton(
                      title: 'Sign Up',
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SocialLoginView();
                        }));
                      }),
                  const SizedBox(
                    height: 15,
                  ),
                  SecondaryButton(
                      title: "Sign In",
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SignInView();
                        }));
                      })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
