import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              SizedBox(height: 20),
              Text(
                'UKHTI OFFICIAL',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Pemilik',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                 'Vinstore Warung Sayur 5 Ribu',
              style: TextStyle(
                fontSize: 20, // Ukuran teks dibuat sedikit lebih besar agar menonjol
                fontWeight: FontWeight.bold, // Membuat teks menjadi tebal
                fontStyle: FontStyle.italic, // Gaya tambahan (miring) untuk estetika/bagus
                color: Colors.green, // Warna hijau tua agar sesuai dengan produk sayuran dan terlihat berkelas
                letterSpacing: 0.8, // Menambahkan jarak antar huruf agar lebih mudah dibaca (opsional)
                ),
                ),
              SizedBox(height: 20),
              Text(
                'Aplikasi ini dibuat menggunakan Flutter sebagai tugas UTS.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
