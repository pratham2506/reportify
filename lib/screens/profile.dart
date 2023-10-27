import 'package:flutter/material.dart';
import 'package:reportify/utils/constants.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Center(
            child: Column(
      children: [
        Image.asset('assets/images/avatar.jpeg'),
        const SizedBox(
          height: defaultSpacing * 5,
        ),
        Text(
          "Hey, (username) \nother user related data to be fetched here ",
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontSize: fontSizeTitle, fontWeight: FontWeight.w500),
        )
      ],
    )));
  }
}
