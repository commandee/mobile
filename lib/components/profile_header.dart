import 'package:flutter/material.dart';
import 'package:teste/components/foto_perfil.dart';
import 'package:teste/constants.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Spacer(),
                    ProfilePic(),
                    Spacer(),
                    SizedBox(
                      width: 180,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Nome de usuário',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('@nomedeusuario',
                                style: TextStyle(
                                  color: primary,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14)),
                          )
                          
                        ],
                      ),
                    ),
                    Spacer()
                  ],
                ),
              );
  }
}