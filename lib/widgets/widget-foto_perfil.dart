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
            'https://static.vecteezy.com/system/resources/previews/021/548/095/original/default-profile-picture-avatar-user-avatar-icon-person-icon-head-icon-profile-picture-icons-default-anonymous-user-male-and-female-businessman-photo-placeholder-social-network-avatar-portrait-free-vector.jpg'),
      ),
    );
  }
}
