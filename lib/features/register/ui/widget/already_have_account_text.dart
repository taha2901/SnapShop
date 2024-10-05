import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Forget Password?',
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Reset',
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // context.pushReplacementNamed(Routers.login);
              },
          ),
        ],
      ),
    );
  }
}