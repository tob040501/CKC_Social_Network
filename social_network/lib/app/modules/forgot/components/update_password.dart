import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/colors.dart';
import 'package:social_network/app/modules/register/components/register_form.dart';

class UpdatePassword extends StatelessWidget {
  UpdatePassword({Key? key}) : super(key: key);

  TextEditingController _newPassword = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: blackColor,
            ),
          ),
          elevation: 0,
          backgroundColor: miniColor,
          title: const Text(
            'Tạo mật khẩu mới',
            style: TextStyle(color: blackColor, fontSize: 24),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                RegisterForm(
                    hintText: 'Mật khẩu',
                    icon: const Icon(
                      Icons.lock,
                      color: blackColor,
                    ),
                    isHideText: true,
                    isNumberText: false,
                    controller: _newPassword),
                RegisterForm(
                    hintText: 'Xác nhận mật khẩu',
                    icon: const Icon(
                      Icons.lock,
                      color: blackColor,
                    ),
                    isHideText: true,
                    isNumberText: false,
                    controller: _confirmPassword),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        color: miniColor,
                        border: Border.all(color: blackColor, width: 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(
                        child: Text(
                          'Xác nhận',
                          style: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
