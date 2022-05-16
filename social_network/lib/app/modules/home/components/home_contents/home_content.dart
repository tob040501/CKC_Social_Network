import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/images.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.zero,
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage(avatar),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: const [
                        Text(
                          'TOB',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'time',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Image.asset(avatar),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
                          Container(
                            child: const Text('4.521'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: const Icon(Icons.message_outlined),
                          ),
                          Container(
                            child: const Text('123'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: const Icon(Icons.send_outlined),
                    ),
                  ],
                ),
              ),
              Container(
                child: const Icon(Icons.bookmark_outline_sharp),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
