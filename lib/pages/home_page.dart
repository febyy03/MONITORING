import 'package:flutter/material.dart';
import '../models/katalok_model.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Food> foods = [
  Food(
    name: 'Tumis Toge',
    image: 'assets/images/tumistoge.jpeg',
    description: 'Minuman segar pelepas dahaga dengan rasa manis yang pas.',
    price: 5000,
  ),
  Food(
    name: 'Bakwan Jagung',
    image: 'assets/images/bakwanjagung.jpeg',
    description: 'Nasi goreng dengan topping telur dan ayam suwir.',
    price: 5000,
  ),
  Food(
    name: 'Capcay',
    image: 'assets/images/capcay.jpeg',
    description: 'Mie lembut disajikan dengan ayam manis gurih.',
    price: 6000,
  ),
  Food(
    name: 'Sayur Bening',
    image: 'assets/images/sayurbening.jpeg',
    description: 'Ayam krispi dengan sambal pedas menggugah selera.',
    price: 5000,
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Katalog Menu'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // dua kolom
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        itemCount: foods.length,
        itemBuilder: (context, index) {
          final food = foods[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(food: food),
                ),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.asset(
                      food.image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      food.name,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Rp ${food.price.toStringAsFixed(0)}',
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      food.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
