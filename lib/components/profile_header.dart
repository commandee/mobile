import 'package:flutter/material.dart';
import 'package:teste/components/foto_perfil.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

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
                              'Nome de usuário',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('@nomedeusuario',
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground
                                      .withOpacity(0.5),
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