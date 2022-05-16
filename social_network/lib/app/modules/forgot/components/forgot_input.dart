import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/colors.dart';
import 'package:social_network/app/modules/register/components/register_form.dart';

class ForgotInput extends StatelessWidget {
  ForgotInput({Key? key}) : super(key: key);
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 60,
        ),
        Container(
          width: 350,
          child: const Text(
              'Vui lòng nhập địa chỉ email của bạn vào bên dưới và chúng tôi sẽ gửi một liên kết để đặt lại mật khẩu của bạn',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: blackColor,
                fontSize: 16,
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: RegisterForm(
              hintText: 'Email',
              icon: const Icon(
                Icons.email,
                color: blackColor,
              ),
              isHideText: false,
              isNumberText: false,
              controller: _emailController),
        )
      ],
    );
  }
}
