import 'package:flutter/material.dart';
import 'package:my_awesome_app/Provider/favorite_provider.dart';
import '../Provider/favorite_provider.dart';
import '../Utils/constants.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    final favoriteItems = favoriteProvider.favorites;

    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(git
        backgroundColor: kbackgroundColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "My Favorites",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: favoriteItems.isEmpty
          ? const Center(
        child: Text(
          "No favorites yet!",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      )
          : ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          final favoriteId = favoriteItems[index];

          return Card(
            margin: const EdgeInsets.symmetric(
                horizontal: 15, vertical: 10),
            child: ListTile(
              title: Text("Recipe ID: $favoriteId"),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  favoriteProvider.toggleFavorite(favoriteId);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
