import 'package:flutter/material.dart';

void main() {
  runApp(const DrinkStoreApp());
}

class DrinkStoreApp extends StatelessWidget {
  const DrinkStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drink Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, dynamic>> drinks = [
    {
      "name": "Coca Cola",
      "description": "Refreshing soft drink",
      "price": 1.99,
      "image": "images/coca_cola.png"
    },
    {
      "name": "Pepsi",
      "description": "Popular cola drink",
      "price": 1.89,
      "image": "images/pepsi.png"
    },
    {
    "name": "Fanta",
    "description": "Orange flavored soda",
    "price": 1.79,
    "image": "images/fanta.png"
  },
  {
    "name": "Sprite",
    "description": "Lemon-lime soda",
    "price": 1.69,
    "image": "images/sprite.png"
  },
  {
    "name": "Mountain Dew",
    "description": "Citrus flavored soda",
    "price": 1.99,
    "image": "images/mountain_dew.png"
  },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drink Store'),
      ),
      body: ListView.builder(
        itemCount: drinks.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(drinks[index]['image']),
              title: Text(drinks[index]['name']),
              subtitle: Text(drinks[index]['description']),
              trailing: Text('\$${drinks[index]['price']}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DrinkDetailsScreen(drink: drinks[index]),
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

class DrinkDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> drink;

  const DrinkDetailsScreen({super.key, required this.drink});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(drink['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: 300, // Setează lățimea maximă
                height: 300, // Setează înălțimea maximă
                child: Image.asset(
                  drink['image'],
                  fit: BoxFit.contain, // Ajustează imaginea în container
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              drink['name'],
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              drink['description'],
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Text(
              '\$${drink['price']}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Adaugă funcționalitatea de adăugare în coș aici
              },
              child: const Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
