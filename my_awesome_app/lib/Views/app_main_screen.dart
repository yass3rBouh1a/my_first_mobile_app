import 'package:flutter/material.dart';
import 'favorite_screen.dart';

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({Key? key}) : super(key: key);

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  int selectedIndex = 0;

  // Liste des pages à afficher en fonction de l'index sélectionné
  final List<Widget> pages = [
    const Center(
      child: Text(
        'Home Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    ),
    const FavoriteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex], // Affiche la page correspondant à l'index
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex, // Index actuel
        onTap: (index) {
          setState(() {
            selectedIndex = index; // Change l'index sélectionné
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Icône pour l'écran "Home"
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite), // Icône pour l'écran "Favorite"
            label: 'Favorite',
          ),
        ],
        selectedItemColor: Colors.blue, // Couleur de l'élément sélectionné
        unselectedItemColor: Colors.grey, // Couleur des éléments non sélectionnés
        showSelectedLabels: true, // Affiche le texte de l'élément sélectionné
        showUnselectedLabels: true, // Affiche le texte des éléments non sélectionnés
      ),
    );
  }
}
