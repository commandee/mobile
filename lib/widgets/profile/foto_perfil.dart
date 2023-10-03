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
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage('assets/images/profile.jpg'),
      ),
    );
  }
}
