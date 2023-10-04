import 'package:flutter/material.dart';
import 'package:teste/widgets/profile/foto_perfil.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key, required this.userName, required this.name});

  final String userName;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Spacer(),
          ProfilePic(),
          const Spacer(),
          SizedBox(
            width: 180,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('@$userName',
                      style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .onSurfaceVariant,
                              
                          fontWeight: FontWeight.w300,
                          fontSize: 14)),
                )
              ],
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
