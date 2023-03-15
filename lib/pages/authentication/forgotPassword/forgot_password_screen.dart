import 'package:flutter/material.dart';
import 'package:simplone_final/utils/constants.dart';

import 'components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mot de passe oublié"),
        centerTitle: true,
        backgroundColor: kActiveColor,
      ),
      body: Body(),
    );
  }
}
