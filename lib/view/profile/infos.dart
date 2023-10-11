import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/controller/login_controller.dart';
import 'package:teste/model/employee.dart';
import 'package:teste/model/restaurant.dart';
import 'package:teste/widgets/profile/profile_info_tile.dart';

class Infos extends StatefulWidget {
  const Infos({super.key, required this.user});

  final Employee user;

  @override
  State<Infos> createState() => _InfosState();
}

class _InfosState extends State<Infos> {

  @override
  void initState() {
    final loginProvider = Provider.of<LoginController>(context, listen: false);
    restaurante = loginProvider.restaurant;

    super.initState();
  }


  Restaurant? restaurante;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Informações',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                          color: Theme.of(context).colorScheme.secondary,
                          child: Column(
                            children: [
                              InfoTile(
                                icone: Icons.mail_outline_outlined,
                                informacao: widget.user.email,
                              ),
                              InfoTile(
                                icone: Icons.person_outline_outlined,
                                informacao: widget.user.username,
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.local_restaurant_outlined,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                                title: DropdownButton<Restaurant>(
                                    value: restaurante,
                                    items: widget.user.worksAt
                                        .map((restaurant) => DropdownMenuItem(
                                            child: Text(restaurant.name),
                                            value: restaurant))
                                        .toList(),
                                    onChanged: (value) =>
                                        setState(() => restaurante = value)),
                                onTap: () {},
                              )
                            ],
                          )),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Relatórios',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 80),
                        child: Container(
                            color: Theme.of(context).colorScheme.secondary,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.pending_actions_outlined,
                                    color: Theme.of(context).iconTheme.color,
                                  ),
                                  title: Text('Commandas concluídas'),
                                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                                  onTap: () {
                                    Navigator.pushNamed(context, '/done');
                                  },
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
    );
  }
}
