import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:social_network/app/core/values/colors.dart';

class VerificationBox extends StatefulWidget {
  String verifiCode = '';
  VerificationBox({Key? key}) : super(key: key);

  @override
  _VerificationBoxState createState() => _VerificationBoxState();
}

class _VerificationBoxState extends State<VerificationBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 64,
        width: 304,
        child: Center(
          child: PinCodeTextField(
            onCompleted: (value) {
              setState(() {
                widget.verifiCode = value;
              });
            },
            keyboardType: TextInputType.number,
            appContext: context,
            length: 6,
            onChanged: (value) {
              print(value);
            },
            pinTheme: PinTheme(
              selectedColor: miniColor,
              inactiveColor: blackColor,
              activeColor: blackColor,
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 50,
              fieldWidth: 40,
            ),
          ),
        ));
  }
}
