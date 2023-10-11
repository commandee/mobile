import 'package:flutter/material.dart';
import 'package:teste/model/restaurant.dart';
import 'package:teste/view/home.dart';

class TileRestaurant extends StatelessWidget {
  TileRestaurant({super.key, required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          
          leading: Icon(Icons.restaurant_menu_outlined, color: Theme.of(context).colorScheme.tertiary,),
          title: Text(restaurant.name, style: TextStyle()),
          trailing: Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyHomePage();
            }));
            ;
          },
        ),
      ),
    );
  }
}
