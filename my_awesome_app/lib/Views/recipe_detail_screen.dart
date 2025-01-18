import 'package:flutter/material.dart';

class RecipeDetailScreen extends StatelessWidget {
  final String recipeName;
  final String recipeImage;
  final String recipeDetails;

  const RecipeDetailScreen({
    Key? key,
    required this.recipeName,
    required this.recipeImage,
    required this.recipeDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipeName)),
      body: Column(
        children: [
          Image.network(recipeImage),
          const SizedBox(height: 10),
          Text(
            recipeDetails,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
