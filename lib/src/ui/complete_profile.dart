import 'package:e_commerce_ui/src/widget/complete_profile_widgets/complete_profile_body.dart';
import 'package:flutter/material.dart';

class CompleteProfile extends StatelessWidget {
  static String routeName = "/profile";
  const CompleteProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: const CompleteProfileBody(),
    );
  }
}
