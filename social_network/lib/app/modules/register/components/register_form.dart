import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_network/app/core/values/colors.dart';

class RegisterForm extends StatefulWidget {
  final String hintText;
  final bool isHideText;
  final bool isNumberText;
  final bool isEmail;
  Icon icon;
  final TextEditingController controller;
  RegisterForm(
      {Key? key,
      required this.icon,
      required this.hintText,
      required this.isHideText,
      this.isEmail = false,
      required this.isNumberText,
      required this.controller})
      : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isHide = true;
  void _hideText() {
    setState(() {
      isHide = !isHide;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(22)),
              border: Border.all(width: 1, color: blackColor)),
          padding: const EdgeInsets.only(left: 10),
          width: double.infinity,
          //height: 56,
          child: TextFormField(
            keyboardType: widget.isEmail
                ? TextInputType.emailAddress
                : widget.isNumberText
                    ? TextInputType.number
                    : null,
            inputFormatters: widget.isNumberText
                ? <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ]
                : null,
            obscureText: widget.isHideText ? isHide : false,
            controller: widget.controller,
            decoration: InputDecoration(
                prefixIcon: widget.icon,
                suffixIcon: widget.isHideText
                    ? InkWell(
                        onTap: () {
                          _hideText();
                        },
                        child: Icon(
                          isHide ? Icons.visibility : Icons.visibility_off,
                          color: blackColor,
                        ),
                      )
                    : null,
                hintText: widget.hintText,
                border: InputBorder.none,
                hintStyle: const TextStyle(
                  color: blackColor,
                  fontSize: 18,
                )),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
