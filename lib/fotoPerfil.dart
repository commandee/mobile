import 'package:flutter/material.dart';

class ProfilePic extends StatefulWidget {
  ProfilePic({super.key});

  @override
  State<ProfilePic> createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.deepPurple,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(
            'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png?20150327203541'),
      ),
    );
  }
}
