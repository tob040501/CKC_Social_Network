import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/colors.dart';
import 'package:social_network/app/modules/forgot/components/update_password.dart';
import 'package:social_network/app/modules/forgot/components/verification_box.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

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
            'Nhập mã xác nhận',
            style: TextStyle(color: blackColor, fontSize: 24),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Container(
                  width: 350,
                  child:
                      const Text('Mã xác nhận đã được gửi đến email của bạn:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: blackColor,
                            fontSize: 16,
                          )),
                ),
                Container(
                  width: 350,
                  child: const Text('0306191066@caothang.edu.vn',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 20,
                ),
                VerificationBox(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Bạn đã nhận mã chưa?",
                      style: TextStyle(color: blackColor, fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Gửi lại",
                        style: TextStyle(
                            color: blueColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UpdatePassword()));
                    },
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
                          'Tiếp tục',
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
