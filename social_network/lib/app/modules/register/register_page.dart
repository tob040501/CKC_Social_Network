import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/colors.dart';
import 'package:social_network/app/modules/register/components/register_footer.dart';
import 'package:social_network/app/modules/register/components/register_form_list.dart';
import 'package:social_network/app/modules/register/components/register_header.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  final _lastNameController = TextEditingController();
  final _fisrtNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var _controller = [
      _lastNameController,
      _fisrtNameController,
      _emailController,
      _phoneController,
      _passwordController,
      _confirmController
    ];
    return Scaffold(
      backgroundColor: miniColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            const RegisterHeader(),
            const SizedBox(
              height: 20,
            ),
            RegisterFormList(
              controllerText: _controller,
            ),
            const SizedBox(
              height: 20,
            ),
            const RegisterFooter()
          ]),
        ),
      ),
    );
  }
}
