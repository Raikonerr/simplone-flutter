import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import '../../../../components/widgets/welcome_text.dart';
import '../../../../pages/authentication/signIn/sign_in_screen.dart';
import '../../../../utils/size_config.dart';
import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpacing(of: 50),

              WelcomeText(
                title: "Créer un compte",
                text: "Veuillez remplir les champs ci-dessous pour continuer",
              ),

              // Sign Up Form
              SignUpForm(),
              VerticalSpacing(of: 150),

              // Already have account
              Center(
                child: Text.rich(
                  TextSpan(
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(fontWeight: FontWeight.w500),
                    text: "Vous avez déjà un compte? ",
                    children: <TextSpan>[
                      TextSpan(
                        text: "Se connecter",
                        style: TextStyle(color: kActiveColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignInScreen(),
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              ),
              VerticalSpacing(of: 20),
            ],
          ),
        ),
      ),
    );
  }
}
