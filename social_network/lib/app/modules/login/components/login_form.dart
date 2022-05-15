import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/colors.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _obscureText = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  void showToast() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 30, right: 30),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(22)),
              border: Border.all(width: 1, color: blackColor)),
          padding: const EdgeInsets.only(left: 5),
          width: double.infinity,
          //height: 56,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            controller: _emailController,
            decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  color: blackColor,
                  //size: 25,
                ),
                hintText: 'Email',
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: blackColor,
                  fontSize: 16,
                )),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          margin: const EdgeInsets.only(left: 30, right: 30),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(22)),
              border: Border.all(width: 1, color: blackColor)),
          padding: const EdgeInsets.only(left: 5),
          width: double.infinity,
          //height: 56,
          child: TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            controller: _passwordController,
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.lock,
                  color: blackColor,
                  // /size: 20,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    showToast();
                  },
                  color: blackColor,
                ),
                hintText: 'Password',
                border: InputBorder.none,
                hintStyle: const TextStyle(
                  color: blackColor,
                  fontSize: 16,
                )),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 40.0, top: 10),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 130,
                height: 40,
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: blackColor,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
