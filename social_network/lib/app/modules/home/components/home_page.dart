import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/colors.dart';
import 'package:social_network/app/core/values/images.dart';

import 'package:social_network/app/modules/home/components/home_contents/home_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Scaffold(
        body: ListView(
          children: const [
            HomeContent(),
            SizedBox(
              height: 20,
            ),
            HomeContent(),
            SizedBox(
              height: 20,
            ),
            HomeContent(),
          ],
        ),
      ),
    );
  }
}
