import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an Account?',
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Create One',
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // context.pushReplacementNamed(Routers.signUp);
              },
          ),
        ],
      ),
    );
  }
}