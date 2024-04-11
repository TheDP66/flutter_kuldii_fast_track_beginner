import 'package:avatar_glow/avatar_glow.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
    required this.faker,
  }) : super(key: key);

  final Faker faker;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AvatarGlow(
        glowColor: Colors.blue,
        endRadius: 200.0,
        duration: Duration(milliseconds: 2000),
        repeat: true,
        showTwoGlows: true,
        repeatPauseDuration: Duration(milliseconds: 100),
        child: Material(
          // Replace this child with your own
          elevation: 8.0,
          shape: CircleBorder(),
          child: CircleAvatar(
            backgroundColor: Colors.grey[100],
            backgroundImage: NetworkImage(faker.image.image(
              width: 100,
              height: 100,
            )),
            radius: 75.0,
          ),
        ),
      ),
    );
  }
}
