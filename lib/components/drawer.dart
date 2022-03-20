import 'package:flutter/material.dart';
import 'package:ghumante/page/favourites_page.dart';
import 'package:ghumante/page/people_page.dart';
import 'package:ghumante/page/updates.dart';



class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Material(
        color: const Color.fromRGBO(205, 75, 50, 1),
         child: ListView(
         children: <Widget>[
            const SizedBox(height: 48),
            buildMenuItem(
              text: 'People',
              icon: Icons.people,
              onClicked: () => selectedItem(context, 0),
          ),
           const SizedBox(height: 16),
            buildMenuItem(
              text: 'Favourites',
              icon: Icons.favorite_border,
              onClicked: () => selectedItem(context, 1),
              
          ),
           const SizedBox(height: 16),
            buildMenuItem(
              text: 'Updates',
              icon: Icons.update,
              onClicked: () => selectedItem(context, 2),
             
          ),
          const SizedBox(height: 24),
          const Divider(color: Colors.black),
          const SizedBox(height: 16),
            buildMenuItem(
              text: 'Notifications',
              icon: Icons.notifications_outlined,
              onClicked: () => selectedItem(context, 3),
              
          ),
          const SizedBox(height: 16),
            buildMenuItem(
              text: 'Logout',
              icon: Icons.exit_to_app,
              onClicked: () => selectedItem(context, 4),
              
          ),


         ],
        ),
      ),
    );
  
  }




  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.white;
    const hoverColor = Colors.white70;

     return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }



  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const PeoplePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const FavouritesPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const UpdatesPage(),
        ));
        break;
    }
  }
}