/*import 'package:flutter/material.dart';
import 'package:teste/constants.dart';

class BasePage extends Scaffold {
  final String title;
  final Widget body;

  BasePage(super.key, {required this.title, required this.body}) : super(key: key, 
    appBar: AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: fundoDM,

    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    floatingActionButton: AddButton(),
    bottomNavigationBar: const BAB(),
    body: SafeArea(child: Widget)
  )
}

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, '/commanda');
      },
      child: const Icon(Icons.add),
      backgroundColor: fundoDM,
    );
  }
}

class BAB extends StatelessWidget {
  const BAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: fundoDM,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            icon: const Icon(Icons.home),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            icon: const Icon(Icons.person),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
            icon: const Icon(Icons.settings),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
*/
