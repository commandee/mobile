import 'package:flutter/material.dart';
import 'package:teste/widgets/tile_restaurant.dart';

class ChooseRestaurant extends StatelessWidget {
  const ChooseRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.info_outline,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
            children: [
              Text(
                "Olá Employee!",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Em qual desses restaurante estaremos trabalhando hoje?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),

              Spacer(),
              RestaurantOption(restaurant: 'Restaurante 1'),
              RestaurantOption(restaurant: 'Restaurante 2'),
              RestaurantOption(restaurant: 'Restaurante 3'),
              Spacer(),
              Image.asset('assets/images/illustration2.png', width: 280, height: 280,),
            ],
          ),
      ),
      
    );
  }
}
