import 'package:flutter/material.dart';
import '../models/katalok_model.dart';

class DetailPage extends StatelessWidget {
  final Food food;

  const DetailPage({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(food.image, height: 200),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              food.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Rp ${food.price.toStringAsFixed(0)}',
              style: const TextStyle(fontSize: 18, color: Colors.orange),
            ),
            const SizedBox(height: 10),
            Text(
              food.description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
