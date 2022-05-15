import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/colors.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 100,
          child: Flexible(
            child: Center(
                child: Text(
              'Đăng ký',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            )),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            padding: const EdgeInsets.only(left: 50),
            child: const Text(
              'Chào mừng đến với CKC',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: blackColor,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            padding: const EdgeInsets.only(left: 50, top: 10),
            child: const Text(
              'Tạo tài khoản mới và kết nối với bạn bè',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: blackColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
