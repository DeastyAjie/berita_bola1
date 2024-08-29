import 'package:flutter/material.dart';

class RecipeApp extends StatefulWidget {
  @override
  _RecipeAppState createState() => _RecipeAppState();
}

class _RecipeAppState extends State<RecipeApp> {
  List<Recipe> _recipes = [
    Recipe('Nasi Goreng', 'Resep nasi goreng yang enak dan mudah dibuat'),
    Recipe('Sate', 'Resep sate yang lezat dan nikmat'),
    Recipe('Gado-Gado', 'Resep gado-gado yang segar dan seimbang'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Masak'),
      ),
      body: ListView.builder(
        itemCount: _recipes.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(_recipes[index].title),
              subtitle: Text(_recipes[index].description),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeDetail(_recipes[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class Recipe {
  String title;
  String description;

  Recipe(this.title, this.description);
}

class RecipeDetail extends StatelessWidget {
  final Recipe _recipe;

  RecipeDetail(this._recipe);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_recipe.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              _recipe.description,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}