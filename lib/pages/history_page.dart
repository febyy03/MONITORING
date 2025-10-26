import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // contoh data riwayat sederhana
    final List<String> historyItems = [
      'Capcay - 22 Okt 2025',
      'Sayur Bening - 21 Okt 2025',
      'Tumis  Toge - 21 Okt 2025',
      'Sayur Bening - 22 Okt 2025',
      'Capcay - 22 Okt 2025',
      'Bakwan Jagung - 22 Okt 2025',
      'Tumis  Toge - 23 Okt 2025',
      'Tumis  Toge - 23 Okt 2025',
      'Tumis  Toge - 24 Okt 2025',
      'Sayur Bening - 25 Okt 2025',
      'Sayur Bening - 25 Okt 2025',
      'Sayur Bening - 25 Okt 2025',
      'Sayur Bening - 25 Okt 2025',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat Pesanan'),
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView.builder(
        itemCount: historyItems.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: const Icon(Icons.receipt_long, color: Colors.orange),
              title: Text(historyItems[index]),
              subtitle: const Text('Status: Selesai'),
              trailing: const Icon(Icons.check_circle, color: Colors.green),
            ),
          );
        },
      ),
    );
  }
}
